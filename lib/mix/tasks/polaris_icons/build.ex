defmodule Mix.Tasks.PolarisIcons.Build do
  # Builds a new lib/polaris_icons.ex with bundled icon set.
  @moduledoc false

  use Mix.Task

  @template "assets/polaris_icons.exs"
  @target_file "lib/polaris_icons.ex"

  def run(_args) do
    icon_assets_dir = Mix.Tasks.PolarisIcons.Update.icon_assets_dir()
    icon_files = Path.wildcard(Path.join(icon_assets_dir, "*.svg"))

    icons =
      for file <- icon_files, reduce: %{} do
        acc ->
          {func, variant} = parse_icon_name(file)
          body = read_svg_body!(file)
          Map.update(acc, func, %{variant => body}, &Map.put(&1, variant, body))
      end
      |> Enum.sort_by(&elem(&1, 0))

    Mix.Generator.copy_template(@template, @target_file, %{icons: icons}, force: true)

    Mix.Task.run("format")
  end

  defp read_svg_body!(file) do
    file
    |> File.read!()
    |> String.trim()
    |> String.replace(~r/<svg[^>]*>/, "")
    |> String.trim_trailing("</svg>")
    |> String.trim()
  end

  defp parse_icon_name(file) do
    {variant, name_parts} =
      file
      |> Path.basename()
      |> Path.rootname()
      |> Recase.to_snake()
      |> String.split("_")
      |> List.pop_at(-1)

    {name_parts |> Enum.join("_") |> String.to_atom(), String.to_atom(variant)}
  end
end
