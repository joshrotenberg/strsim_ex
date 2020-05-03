# Strsim

[![Hex pm](http://img.shields.io/hexpm/v/strsim.svg?style=flat)](https://hex.pm/packages/strsim)
![Elixir CI](https://github.com/joshrotenberg/strsim_ex/workflows/Elixir%20CI/badge.svg)

An [Elixir][0] wrapper around the [Rust][1] [strsim][2] crate with [rustler][3].

## Usage

All of the functions in the crate have equivalent Elixir functions:

```
iex(1)> Strsim.damerau_levenshtein("ab", "bca")
{:ok, 2}

iex(2)> Strsim.generic_hamming([1, 2], [1, 3])
{:ok, 1}

iex(3)> Strsim.generic_jaro([1, 2], [1, 3, 4])
{:ok, 0.611111111111111}

iex(4)> Strsim.generic_jaro_winkler([1, 2], [1, 3, 4])
{:ok, 0.6499999999999999}

iex(5)> Strsim.generic_levenshtein([1, 2, 3], [1, 2, 3, 4, 5, 6])
{:ok, 3}

iex(6)> Strsim.hamming("hamming", "hammers")
{:ok, 3}

iex(7)> Strsim.hamming("hamming", "ham")
{:error, :different_length_args}

iex(8)> Strsim.jaro("Friedrich Nietzsche", "Jean-Paul Sartre")
{:ok, 0.39188596491228067}

iex(9)> Strsim.jaro_winkler("cheeseburger", "cheese fries")
{:ok, 0.9111111111111111}

iex(10)> Strsim.levenshtein("kitten", "sitting")
{:ok, 3}

iex(11)> Strsim.normalized_damerau_levenshtein("levenshtein", "löwenbräu")
{:ok, 0.2727272727272727}

iex(12)> Strsim.normalized_levenshtein("kitten", "sitting")
{:ok, 0.5714285714285714}

iex(13)> Strsim.osa_distance("ab", "bca")
{:ok, 3}

iex(14)> Strsim.sorensen_dice("ferris", "feris")
{:ok, 0.8888888888888888}
```

## Benchmarks

Everybody loves benchmarks. There are results for all implemented [strsim](bench/strsim_benchmark_results.md) 
as well as both [jaro](bench/jaro_benchmark_results.md) and [levenshtein](bench/levenshtein_benchmark_results.md) comparing the Rust and Elixir implementations.

To run the benchmarks:

```
# run the Elixir vs Rust jaro benchmark
$ MIX_ENV=bench mix bench.jaro 

# run the Elixir vs Rust levensthein benchmark
$ MIX_ENV=bench mix bench.levenshtein

# run a benchmark will all of the Rust functions
$ MIX_ENV=bench mix bench.strsim

# run 'em all
$ MIX_ENV=bench mix bench.all
```

## See also

* [fuzzy_compare][4]
* [levenshtein][5]
* [String.jaro_distance/2][6]
* [the_fuzz][7]

## Installation

The package can be installed
by adding `strsim` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:strsim, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/strsim](https://hexdocs.pm/strsim).

[0]: https://elixir-lang.org
[1]: https://www.rust-lang.org 
[2]: https://crates.io/crates/strsim
[3]: https://hex.pm/packages/rustler
[4]: https://hex.pm/packages/fuzzy_compare
[5]: https://hex.pm/packages/levenshtein
[6]: https://hexdocs.pm/elixir/String.html#jaro_distance/2
[7]: https://hex.pm/packages/the_fuzz