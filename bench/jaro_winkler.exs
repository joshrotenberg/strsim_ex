Benchee.run(
  %{
    "strsim jaro" => fn -> Strsim.jaro_winkler("Dwayne", "Duane") end,
    "elixir jaro" => fn -> String.jaro_distance("Dwayne", "Duane") end,
    "the_fuzz jaro" => fn -> TheFuzz.Similarity.JaroWinkler.compare("Dwayne", "Duane") end,
    "simetric" => fn -> Simetric.Jaro.Winkler.compare("Dwayne", "Duane") end
  },
  formatters: [
    {Benchee.Formatters.Markdown,
     file: "bench/jaro_winkler_benchmark_results.md",
     description: """
     This benchmark compares pure Elixir and Rust `jaro_winkler` implementations.
     """},
    {Benchee.Formatters.Console, extended_statistics: true}
  ],
  time: 10,
  memory_time: 2
)
