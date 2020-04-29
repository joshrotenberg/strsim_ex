defmodule Levenshtein do
  @moduledoc "This is a Levenshtein implementation that used to be in Elixir Strings"
  def levenshtein_distance(source, target)
  def levenshtein_distance(source, source), do: 0
  def levenshtein_distance(source, <<>>), do: length(source)
  def levenshtein_distance(<<>>, target), do: length(target)

  def levenshtein_distance(source, target) do
    source = String.graphemes(source)
    target = String.graphemes(target)
    distlist = 0..Kernel.length(target) |> Enum.to_list()
    do_distance(source, target, distlist, 1)
  end

  defp do_distance([], _, distlist, _), do: List.last(distlist)

  defp do_distance([src_hd | src_tl], target, distlist, step) do
    distlist = distlist(target, distlist, src_hd, [step], step)
    do_distance(src_tl, target, distlist, step + 1)
  end

  defp distlist([], _, _, new_distlist, _), do: Enum.reverse(new_distlist)
  defp distlist(
         [target_hd | target_tl],
         [distlist_hd | distlist_tl],
         grapheme,
         new_distlist,
         last_dist
       ) do
    diff = if target_hd != grapheme, do: 1, else: 0
    min = min(min(last_dist + 1, hd(distlist_tl) + 1), distlist_hd + diff)
    distlist(target_tl, distlist_tl, grapheme, [min | new_distlist], min)
  end
end

Benchee.run(
  %{
    "elixir levenshtein" => fn -> Levenshtein.levenshtein_distance("kitten", "sitting") end,
    "strsim levenshtein" => fn -> Strsim.levenshtein("kitten", "sitting") end,
  },
  formatters: [
    {Benchee.Formatters.Markdown,
    file: "bench/levenshtein_benchmark_results.md",
    description: """
    This benchmark compares a pure Elixir and Rust `levenshtein` implementation.
    """
  },
    Benchee.Formatters.Console
  ],
  time: 10,
  memory_time: 2
)
