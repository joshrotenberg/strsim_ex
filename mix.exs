defmodule Strsim.MixProject do
  use Mix.Project

  def project do
    [
      app: :strsim,
      version: "0.1.0",
      elixir: "~> 1.10",
      source_url: "https://github.com/joshrotenberg/strsim_ex",
      test_coverage: [tool: ExCoveralls],
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      compilers: [:rustler] ++ Mix.compilers(),
      rustler_crates:  rustler_crates(),
      deps: deps()
    ]
  end

  defp description do
    "An Elixir wrapper around the Rust strsim crate with rustler."
  end

  defp package do
    [
      maintainers: ["Josh Rotenberg"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/joshrotenberg/strsim_ex"}
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.21.0"},
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.10", only: :test},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp rustler_crates do
    [
      strsim_nif: [
        mode: if(Mix.env() == :prod, do: :release, else: :debug)
      ]
    ]
  end
end
