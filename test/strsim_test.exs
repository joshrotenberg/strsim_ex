defmodule StrsimTest do
  use ExUnit.Case

  doctest Strsim,
    except: [
      jaro: 2,
      jaro_winkler: 2,
      normalized_damerau_levenshtein: 2,
      normalized_levenshtein: 2,
      sorensen_dice: 2
    ]

  describe "strsim tests" do
    test "damerau_levenshtein/2" do
      assert Strsim.damerau_levenshtein("ab", "bca") == {:ok, 2}
    end

    test "hamming/2" do
      assert Strsim.hamming("hamming", "hammers") == {:ok, 3}
      assert Strsim.hamming("hamming", "ham") == {:error, :different_length_args}
    end

    test "jaro/2" do
      assert Strsim.jaro("Friedrich Nietzsche", "Jean-Paul Sartre")
             |> elem(1)
             |> Kernel.-(0.392)
             |> abs < 0.01
    end

    test "jaro_winkler/2" do
      assert Strsim.jaro_winkler("cheeseburger", "cheese fries")
             |> elem(1)
             |> Kernel.-(0.911)
             |> abs < 0.001
    end

    test "levenshtein/2" do
      assert Strsim.levenshtein("kitten", "sitting") == {:ok, 3}
    end

    test "normalized_damerau_levenshtein/2" do
      assert Strsim.normalized_damerau_levenshtein("levenshtein", "löwenbräu")
             |> elem(1)
             |> Kernel.-(0.27272)
             |> abs() < 0.00001

      assert Strsim.normalized_damerau_levenshtein("", "")
             |> elem(1)
             |> Kernel.-(1.0)
             |> abs() < 0.00001

      assert Strsim.normalized_damerau_levenshtein("", "flower")
             |> elem(1)
             |> abs() < 0.00001

      assert Strsim.normalized_damerau_levenshtein("tree", "")
             |> elem(1)
             |> abs() < 0.00001

      assert Strsim.normalized_damerau_levenshtein("sunglasses", "sunglasses")
             |> elem(1)
             |> Kernel.-(1.0)
             |> abs() < 0.00001
    end

    test "normalized_levenshtein/2" do
      assert Strsim.normalized_levenshtein("kitten", "sitting")
             |> elem(1)
             |> Kernel.-(0.57142)
             |> abs() < 0.00001

      assert Strsim.normalized_levenshtein("", "")
             |> elem(1)
             |> Kernel.-(1.0)
             |> abs() < 0.00001

      assert Strsim.normalized_levenshtein("", "second")
             |> elem(1)
             |> abs() < 0.00001

      assert Strsim.normalized_levenshtein("first", "")
             |> elem(1)
             |> abs() < 0.00001

      assert Strsim.normalized_levenshtein("string", "string")
             |> elem(1)
             |> Kernel.-(1.0)
             |> abs() < 0.00001
    end

    test "osa_distance/2" do
      assert Strsim.osa_distance("ab", "bca") == {:ok, 3}
    end

    test "sorensen_dice/2" do
      assert Strsim.sorensen_dice("", "") == {:ok, 1.0}
      assert Strsim.sorensen_dice("", "a") == {:ok, 0.0}
      assert Strsim.sorensen_dice("french", "quebec") == {:ok, 0.0}
      assert Strsim.sorensen_dice("ferris", "ferris") == {:ok, 1.0}
      assert Strsim.sorensen_dice("feris", "ferris") == {:ok, 0.8888888888888888}
    end
  end
end
