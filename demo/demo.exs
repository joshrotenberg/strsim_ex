defmodule Demo do
  def match(word, stream, match_fn) do
     stream
     |> Stream.map(&String.trim/1)
     |> Stream.map(fn w -> match_fn.(word, w) end)
     |> Stream.reject(fn {:ok, m} -> m < 0.9 end)
     |> Enum.to_list()
  end
end

Demo.match("admiral", File.stream!("/usr/share/dict/words"), &Strsim.jaro_winkler/2) |> IO.inspect()
