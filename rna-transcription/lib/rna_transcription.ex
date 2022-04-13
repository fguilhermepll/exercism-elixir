defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @transcription %{?A => ?U, ?C => ?G, ?G => ?C, ?T => ?A}
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, fn x -> @transcription[x] end)
  end
end
