defmodule Mix.Tasks.Rustfmt do
  use Mix.Task

  @rs_path_wildcard "native/*/src/*.rs"
  @shortdoc "Simply calls the Hello.say/0 function."
  def run(_) do
    p = Path.expand(@rs_path_wildcard)
    |> Path.wildcard()
    System.cmd("rustfmt", p)
  end
end
