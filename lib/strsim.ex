defmodule Strsim do
  @moduledoc """
  Documentation for `Strsim`.
  """

  @doc """
  Like optimal string alignment, but substrings can be edited an unlimited number of times, and the triangle inequality holds.

      iex> Strsim.damerau_levenshtein("ab", "bca")
      {:ok, 2}
  """
  defdelegate damerau_levenshtein(a, b), to: Strsim.Nif

  @doc """
  Like optimal string alignment, but substrings can be edited an unlimited number of times, and the triangle inequality holds.

      iex> Strsim.damerau_levenshtein!("ab", "bca")
      2
  """
  def damerau_levenshtein!(a, b) do
    case damerau_levenshtein(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Calculates the number of positions in the two sequences where the elements differ. Returns an error if the sequences have different lengths.

      iex> Strsim.generic_hamming([1, 2], [1, 3])
      {:ok, 1}

      iex> Strsim.generic_hamming([1, 2], [1, 3, 4])
      {:error, :different_length_args}
  """
  defdelegate generic_hamming(a, b), to: Strsim.Nif

  @doc """
  Calculates the number of positions in the two sequences where the elements differ. Returns an error if the sequences have different lengths.

      iex> Strsim.generic_hamming!([1, 2], [1, 3])
      1

      iex> Strsim.generic_hamming!([1, 2], [1, 3, 4])
      ** (Strsim.DifferentLengthArgsError) arguments are different length
  """
  def generic_hamming!(a, b) do
    case generic_hamming(a, b) do
      {:ok, value} -> value
      {:error, :different_length_args} -> raise(Strsim.DifferentLengthArgsError)
    end
  end

  @doc """
  Calculates the Jaro similarity between two sequences. The returned value is between 0.0 and 1.0 (higher value means more similar).

      iex> Strsim.generic_jaro([1, 2], [1, 3, 4])
      {:ok, 0.611111111111111}
  """
  defdelegate generic_jaro(a, b), to: Strsim.Nif

  @doc """
  Calculates the Jaro similarity between two sequences. The returned value is between 0.0 and 1.0 (higher value means more similar).

      iex> Strsim.generic_jaro!([1, 2], [1, 3, 4])
      0.611111111111111
  """
  def generic_jaro!(a, b) do
    case generic_jaro(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Like Jaro but gives a boost to sequences that have a common prefix.

      iex> Strsim.generic_jaro_winkler([1, 2], [1, 3, 4])
      {:ok, 0.6499999999999999}
  """
  defdelegate generic_jaro_winkler(a, b), to: Strsim.Nif

  @doc """
  Like Jaro but gives a boost to sequences that have a common prefix.

      iex> Strsim.generic_jaro_winkler!([1, 2], [1, 3, 4])
      0.6499999999999999
  """
  def generic_jaro_winkler!(a, b) do
    case generic_jaro_winkler(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Calculates the minimum number of insertions, deletions, and substitutions required to change one sequence into the other.

      iex> Strsim.generic_levenshtein([1, 2, 3], [1, 2, 3, 4, 5, 6])
      {:ok, 3}
  """
  defdelegate generic_levenshtein(a, b), to: Strsim.Nif

  @doc """
  Calculates the minimum number of insertions, deletions, and substitutions required to change one sequence into the other.

      iex> Strsim.generic_levenshtein!([1, 2, 3], [1, 2, 3, 4, 5, 6])
      3
  """
  def generic_levenshtein!(a, b) do
    case generic_levenshtein(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Calculates the number of positions in the two strings where the characters differ. Returns an error if the strings have different lengths.

      iex> Strsim.hamming("hamming", "hammers")
      {:ok, 3}

      iex> Strsim.hamming("hamming", "ham")
      {:error, :different_length_args}
  """
  defdelegate hamming(a, b), to: Strsim.Nif

  @doc """
  Calculates the number of positions in the two strings where the characters differ. Returns an error if the strings have different lengths.

      iex> Strsim.hamming!("hamming", "hammers")
      3

      iex> Strsim.hamming!("hamming", "ham")
      ** (Strsim.DifferentLengthArgsError) arguments are different length
  """
  def hamming!(a, b) do
    case hamming(a, b) do
      {:ok, value} -> value
      {:error, :different_length_args} -> raise(Strsim.DifferentLengthArgsError)
    end
  end

  @doc """
  Calculates the Jaro similarity between two strings. The returned value is between 0.0 and 1.0 (higher value means more similar).

      iex> Strsim.jaro("Friedrich Nietzsche", "Jean-Paul Sartre")
      {:ok, 0.39188596491228067}
  """
  defdelegate jaro(a, b), to: Strsim.Nif

  @doc """
  Calculates the Jaro similarity between two strings. The returned value is between 0.0 and 1.0 (higher value means more similar).

      iex> Strsim.jaro!("Friedrich Nietzsche", "Jean-Paul Sartre")
      0.39188596491228067
  """
  def jaro!(a, b) do
    case jaro(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Like Jaro but gives a boost to strings that have a common prefix.

      iex> Strsim.jaro_winkler("cheeseburger", "cheese fries")
      {:ok, 0.9111111111111111}
  """
  defdelegate jaro_winkler(a, b), to: Strsim.Nif

  @doc """
  Like Jaro but gives a boost to strings that have a common prefix.

      iex> Strsim.jaro_winkler!("cheeseburger", "cheese fries")
      0.9111111111111111
  """
  def jaro_winkler!(a, b) do
    case jaro_winkler(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Calculates the minimum number of insertions, deletions, and substitutions required to change one string into the other.

      iex> Strsim.levenshtein("kitten", "sitting")
      {:ok, 3}
  """
  defdelegate levenshtein(a, b), to: Strsim.Nif

  @doc """
  Calculates the minimum number of insertions, deletions, and substitutions required to change one string into the other.

      iex> Strsim.levenshtein!("kitten", "sitting")
      3
  """
  def levenshtein!(a, b) do
    case levenshtein(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Calculates a normalized score of the Damerau–Levenshtein algorithm between 0.0 and 1.0 (inclusive), where 1.0 means the strings are the same.

      iex> Strsim.normalized_damerau_levenshtein("levenshtein", "löwenbräu")
      {:ok, 0.2727272727272727}
  """
  defdelegate normalized_damerau_levenshtein(a, b), to: Strsim.Nif

  @doc """
  Calculates a normalized score of the Damerau–Levenshtein algorithm between 0.0 and 1.0 (inclusive), where 1.0 means the strings are the same.

      iex> Strsim.normalized_damerau_levenshtein!("levenshtein", "löwenbräu")
      0.2727272727272727
  """
  def normalized_damerau_levenshtein!(a, b) do
    case normalized_damerau_levenshtein(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Calculates a normalized score of the Levenshtein algorithm between 0.0 and 1.0 (inclusive), where 1.0 means the strings are the same.

      iex> Strsim.normalized_levenshtein("kitten", "sitting")
      {:ok, 0.5714285714285714}
  """
  defdelegate normalized_levenshtein(a, b), to: Strsim.Nif

  @doc """
  Calculates a normalized score of the Levenshtein algorithm between 0.0 and 1.0 (inclusive), where 1.0 means the strings are the same.

      iex> Strsim.normalized_levenshtein!("kitten", "sitting")
      0.5714285714285714
  """
  def normalized_levenshtein!(a, b) do
    case normalized_levenshtein(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Like Levenshtein but allows for adjacent transpositions. Each substring can only be edited once.

      iex> Strsim.osa_distance("ab", "bca")
      {:ok, 3}
  """
  defdelegate osa_distance(a, b), to: Strsim.Nif

  @doc """
  Like Levenshtein but allows for adjacent transpositions. Each substring can only be edited once.

      iex> Strsim.osa_distance!("ab", "bca")
      3
  """
  def osa_distance!(a, b) do
    case osa_distance(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end

  @doc """
  Calculates a Sørensen-Dice similarity distance using bigrams.

      iex> Strsim.sorensen_dice("ferris", "feris")
      {:ok, 0.8888888888888888}
  """
  defdelegate sorensen_dice(a, b), to: Strsim.Nif

  @doc """
  Calculates a Sørensen-Dice similarity distance using bigrams.

      iex> Strsim.sorensen_dice!("ferris", "feris")
      0.8888888888888888
  """
  def sorensen_dice!(a, b) do
    case sorensen_dice(a, b) do
      {:ok, value} -> value
      {:error, error} -> raise error
    end
  end
end

defmodule Strsim.DifferentLengthArgsError do
  defexception message: "arguments are different length"
end
