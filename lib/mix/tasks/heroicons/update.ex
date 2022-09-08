defmodule Mix.Tasks.Heroicons.Update do
  @moduledoc """
  Update heroicons.

  By default, it downloads the latest version but you can configure it
  in your config files.

  Example:

      config :heroicons, :version, "#{Heroicons.latest_version()}"

  Then update with

      $ mix heroicons.update
  """

  @shortdoc "Update heroicons assets"

  use Mix.Task

  @impl true
  def run(args) do
    {_opts, args} = OptionParser.parse!(args, strict: [])

    case args do
      [] ->
        Heroicons.update()

      _ ->
        Mix.raise("Invalid arguments, expected: mix heroicons.update")
    end
  end
end
