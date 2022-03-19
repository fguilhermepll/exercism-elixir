defmodule Username do
  def sanitize(''), do: ''
  
  def sanitize([head | tail]) do
    clean =
      head
      |> case do
	?ä -> 'ae'
	?ö -> 'oe'
	?ü -> 'ue'
	?ß -> 'ss'
	x when x >= ?a and x <= ?z -> [x]
	?_ -> '_'
	  _ -> ''   
      end
    clean ++ sanitize(tail)
  end
end
