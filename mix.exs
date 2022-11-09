defmodule PolarisIcons.MixProject do
  use Mix.Project

  def project do
    [
      app: :polaris_icons,
      version: "0.0.1",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Polaris Icons",
      source_url: "https://github.com/zachallaun/polaris_icons_elixir",
      description: "Phoenix components for Polaris Icons",
      docs: docs(),
      package: package(),
      xref: [exclude: [:httpc, :public_key]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, "~> 0.18.2"},
      {:castore, ">= 0.0.0"},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},
      {:recase, "~> 0.7.0", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/zachallaun/polaris_icons_elixir"}
    ]
  end

  defp docs do
    []
  end
end
