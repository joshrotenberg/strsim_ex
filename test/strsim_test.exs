defmodule StrsimTest do
  use ExUnit.Case
  doctest Strsim

  test "greets the world" do
    assert Strsim.hello() == :world
  end
end
