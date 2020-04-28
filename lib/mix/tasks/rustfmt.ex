defmodule Mix.Tasks.Rustfmt do
  @moduledoc false
  use Mix.Task

  @rs_path_wildcard "native/*/src/*.rs"

  @shortdoc "Calls rustfmt on all .rs files found in the native src directory."
  def run(_) do
    p =
      Path.expand(@rs_path_wildcard)
      |> Path.wildcard()

    System.cmd("rustfmt", p)
  end
end
