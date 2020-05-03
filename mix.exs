defmodule Strsim.MixProject do
  use Mix.Project

  def project do
    [
      app: :strsim,
      version: "0.1.1",
      elixir: "~> 1.10",
      source_url: "https://github.com/joshrotenberg/strsim_ex",
      test_coverage: [tool: ExCoveralls],
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      compilers: [:rustler] ++ Mix.compilers(),
      rustler_crates: rustler_crates(),
      deps: deps(),
      aliases: aliases()
    ]
  end

  defp description do
    "An Elixir wrapper around the Rust strsim crate with rustler."
  end

  defp package do
    [
      maintainers: ["Josh Rotenberg"],
      licenses: ["Apache-2.0"],
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
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:benchee, "~> 1.0", only: [:dev, :bench]},
      {:benchee_markdown, "~> 0.2", only: [:dev, :bench]},
      {:the_fuzz, "~> 0.5.0", only: [:dev, :bench]},
      {:simetric, "~> 0.2.0", only: [:dev, :bench]}
    ]
  end

  defp rustler_crates do
    [
      strsim_nif: [
        mode: rustc_mode(Mix.env())
      ]
    ]
  end

  defp rustc_mode(:prod), do: :release
  defp rustc_mode(:bench), do: :release
  defp rustc_mode(_), do: :debug

  defp aliases do
    [
      "bench.jaro": ["run bench/jaro.exs"],
      "bench.jaro_winkler": ["run bench/jaro_winkler.exs"],
      "bench.levenshtein": ["run bench/levenshtein.exs"],
      "bench.hamming": ["run bench/hamming.exs"],
      "bench.strsim": ["run bench/strsim.exs"],
      "bench.all": [
        "bench.jaro",
        "bench.jaro_winkler",
        "bench.levenshtein",
        "bench.hamming",
        "bench.strsim"
      ]
    ]
  end
end
