Benchee.run(
  %{
    "damerau_levenshtein" => fn -> Strsim.damerau_levenshtein("Dwayne", "Duane") end,
    "generic_hamming" => fn -> Strsim.generic_hamming([1, 2], [1, 3]) end,
    "generic_jaro" => fn -> Strsim.generic_jaro([1, 2], [1, 3, 4]) end,
    "generic_jaro_winkler" => fn -> Strsim.generic_jaro_winkler([1, 2], [1, 3, 4]) end,
    "generic_levenshtein" => fn -> Strsim.generic_levenshtein([1, 2, 3], [1, 2, 3, 4, 5, 6]) end,
    "hamming" => fn -> Strsim.hamming("hamming", "hammers") end,
    "jaro" => fn -> Strsim.jaro("Dwayne", "Duane") end,
    "jaro_winkler" => fn -> Strsim.jaro_winkler("Dwayne", "Duane") end,
    "levenshtein" => fn -> Strsim.levenshtein("Dwayne", "Duane") end,
    "normalized_damerau_levensthein" => fn ->
      Strsim.normalized_damerau_levenshtein("Dwayne", "Duane")
    end,
    "normalized_levensthein" => fn -> Strsim.normalized_levenshtein("Dwayne", "Duane") end,
    "osa_distance" => fn -> Strsim.osa_distance("Dwayne", "Duane") end,
    "sorensen_dice" => fn -> Strsim.sorensen_dice("Dwayne", "Duane") end
  },
  formatters: [
    {Benchee.Formatters.Markdown,
     file: "bench/strsim_benchmark_results.md",
     description: """
     This benchmark compares all of the implemented strsim functions.
     """},
    {Benchee.Formatters.Console, extended_statistics: true}
  ],
  time: 10,
  memory_time: 2
)
