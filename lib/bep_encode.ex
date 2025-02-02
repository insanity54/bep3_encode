defmodule BepEncode do
  @moduledoc """
  Documentation for `TestElixir`.
  """


  def char_allowed?(character) do
    character in ?0..?9 or character in ?a..?z or character in ?A..?Z or character in ~c"~_-.!"
  end


  @spec bep_encode(binary()) :: binary()
  def bep_encode(string) when is_binary(string) do
    string = Base.decode16!(string, case: :lower)
    URI.encode(string, &char_allowed?/1)



    # the problem we have is that the case is wrong on _some_ of the values.
    # Assertion with === failed
    # code:  assert actual === expected
    # left:  "%07%B4Qc6%E4%AF%E9%23%2Cs%BC1%26BY%0A%7D~%95"
    # right: "%07%b4Qc6%e4%af%e9%23%2cs%bc1%26BY%0a%7d~%95"

    # B4 should be b4.

  end
end
