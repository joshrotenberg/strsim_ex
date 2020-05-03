Benchee.run(
  %{
    "strsim jaro" => fn -> Strsim.jaro("Dwayne", "Duane") end,
    "elixir jaro" => fn -> String.jaro_distance("Dwayne", "Duane") end,
    "the_fuzz jaro" => fn -> TheFuzz.Similarity.Jaro.compare("Dwayne", "Duane") end
  },
  formatters: [
    {Benchee.Formatters.Markdown,
     file: "bench/jaro_benchmark_results.md",
     description: """
     This benchmark compares a pure Elixir and Rust `jaro` implementation.
     """},
    {Benchee.Formatters.Console, extended_statistics: true}
  ],
  time: 10,
  memory_time: 2
)
