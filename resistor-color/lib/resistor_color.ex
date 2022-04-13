defmodule ResistorColor do
  @doc """
  Return the value of a color band
  """
  @resistors %{brown: 1, black: 0, red: 2, orange: 3, yellow: 4, green: 5, blue: 6, violet: 7, grey: 8, white: 9}
  @spec code(atom) :: integer()
  def code(color), do: @resistors[color]
  end
