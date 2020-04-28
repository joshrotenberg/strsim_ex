# Strsim

An [Elixir][0] wrapper around the [Rust][1] [strsim][2] crate with [rustler][3].

## Usage

All of the non-generic functions in the create have equivalent Elixir functions:

```
{:ok, 2} = Strsim.damerau_levenshtein("ab", "bca")

{:ok, 3} = Strsim.hamming("hamming", "hammers")

{:error, :different_length_args} = Strsim.hamming("hamming", "ham")

# etc.
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
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