defmodule Strsim.Nif do
  @moduledoc false
  use Rustler, otp_app: :strsim, crate: "strsim_nif"

  def damerau_levenshtein(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def hamming(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def jaro(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def jaro_winkler(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def levenshtein(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def normalized_damerau_levenshtein(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def normalized_levenshtein(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def osa_distance(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
  def sorensen_dice(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
