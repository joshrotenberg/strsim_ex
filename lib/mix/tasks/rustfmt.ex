defmodule Mix.Tasks.Rustfmt do
  @moduledoc false
  use Mix.Task

  @rs_path_wildcard "native/*/src/*.rs"

  @shortdoc "Calls rustfmt on all .rs files found in the native src directory."
  def run(argv) do
    paths =
      Path.expand(@rs_path_wildcard)
      |> Path.wildcard()

     System.cmd("rustfmt", paths ++ argv) |>
     elem(0) |>
     IO.puts
  end
end
