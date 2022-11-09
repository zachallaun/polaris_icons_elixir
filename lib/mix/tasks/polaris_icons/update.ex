defmodule Mix.Tasks.PolarisIcons.Update do
  # Updates the icon set via download from github.
  @moduledoc false
  @shortdoc false

  @vsn "6.5.0"
  @tmp_dir_name "polaris-icons-elixir"

  # Updates the icons in the assets/icons directory

  use Mix.Task
  require Logger

  def vsn, do: @vsn

  def icon_assets_dir, do: Path.join("assets", "icons")

  @impl true
  def run(_args) do
    version = @vsn
    tmp_dir = Path.join(System.tmp_dir!(), @tmp_dir_name)

    svgs_dir =
      Path.join([tmp_dir, "polaris--shopify-polaris-icons-#{version}", "polaris-icons", "icons"])

    File.rm_rf!(tmp_dir)
    File.mkdir_p!(tmp_dir)

    url =
      "https://github.com/Shopify/polaris/archive/refs/tags/@shopify/polaris-icons@#{version}.zip"

    archive = fetch_body!(url)

    case unpack_archive(".zip", archive, tmp_dir) do
      :ok -> :ok
      other -> raise "couldn't unpack archive: #{inspect(other)}"
    end

    copy_svg_files(svgs_dir, icon_assets_dir())
  end

  defp copy_svg_files(src_dir, dest_dir) do
    File.rm_rf!(dest_dir)
    File.mkdir_p!(dest_dir)

    svgs =
      for filename <- File.ls!(src_dir),
          String.ends_with?(filename, ".svg") do
        File.cp!(Path.join([src_dir, filename]), Path.join([dest_dir, filename]))
        filename
      end

    Logger.debug("Copied #{length(svgs)} files")
    :ok
  end

  defp fetch_body!(url) do
    url = String.to_charlist(url)
    Logger.debug("Downloading Polaris Icons from #{url}")

    {:ok, _} = Application.ensure_all_started(:inets)
    {:ok, _} = Application.ensure_all_started(:ssl)

    if proxy = System.get_env("HTTP_PROXY") || System.get_env("http_proxy") do
      Logger.debug("Using HTTP_PROXY: #{proxy}")
      %{host: host, port: port} = URI.parse(proxy)
      :httpc.set_options([{:proxy, {{String.to_charlist(host), port}, []}}])
    end

    # https://erlef.github.io/security-wg/secure_coding_and_deployment_hardening/inets
    cacertfile = CAStore.file_path() |> String.to_charlist()

    http_options = [
      ssl: [
        verify: :verify_peer,
        cacertfile: cacertfile,
        depth: 2,
        customize_hostname_check: [
          match_fun: :public_key.pkix_verify_hostname_match_fun(:https)
        ],
        versions: protocol_versions()
      ]
    ]

    options = [body_format: :binary]

    case :httpc.request(:get, {url, []}, http_options, options) do
      {:ok, {{_, 200, _}, _headers, body}} ->
        body

      other ->
        raise "couldn't fetch #{url}: #{inspect(other)}"
    end
  end

  defp protocol_versions do
    if otp_version() < 25, do: [:"tlsv1.2"], else: [:"tlsv1.2", :"tlsv1.3"]
  end

  defp otp_version, do: :erlang.system_info(:otp_release) |> List.to_integer()

  defp unpack_archive(".zip", zip, cwd) do
    with {:ok, _} <- :zip.unzip(zip, cwd: to_charlist(cwd)), do: :ok
  end

  defp unpack_archive(_, tar, cwd) do
    :erl_tar.extract({:binary, tar}, [:compressed, cwd: to_charlist(cwd)])
  end
end
