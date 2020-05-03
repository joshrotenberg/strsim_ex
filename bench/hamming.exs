Benchee.run(
  %{
    "strsim hamming" => fn -> Strsim.hamming("hamming", "hammers") end,
    "the_fuzz hamming" => fn -> TheFuzz.Similarity.Hamming.compare("hamming", "hammers") end
  },
  formatters: [
    {Benchee.Formatters.Markdown,
     file: "bench/hamming_benchmark_results.md",
     description: """
     This benchmark compares a pure Elixir and Rust `hamming` implementation.
     """},
    {Benchee.Formatters.Console, extended_statistics: true}
  ],
  time: 10,
  memory_time: 2
)
