Benchee.run(
  %{
    "strsim damerau_levenshtein" => fn -> Strsim.damerau_levenshtein("Dwayne", "Duane") end,
    "strsim hamming" => fn -> Strsim.hamming("Dwayne", "Duane") end,
    "strsim jaro" => fn -> Strsim.jaro("Dwayne", "Duane") end,
    "strsim jaro_winkler" => fn -> Strsim.jaro_winkler("Dwayne", "Duane") end,
    "strsim levenshtein" => fn -> Strsim.levenshtein("Dwayne", "Duane") end,
    "strsim normalized_damerau_levensthein" => fn -> Strsim.normalized_damerau_levenshtein("Dwayne", "Duane") end,
    "strsim normalized_levensthein" => fn -> Strsim.normalized_levenshtein("Dwayne", "Duane") end,
    "strsim osa_distance" => fn -> Strsim.osa_distance("Dwayne", "Duane") end,
    "strsim sorensen_dice" => fn -> Strsim.sorensen_dice("Dwayne", "Duane") end
  },
  formatters: [
    {Benchee.Formatters.Markdown,
    file: "bench/strsim_benchmark_results.md",
    description: """
    This benchmark compares all of the implemented strsim functions.
    """
  },
  {Benchee.Formatters.Console, extended_statistics: true},
  ],
  time: 10,
  memory_time: 2
)
