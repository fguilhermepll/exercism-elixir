defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      (level === 0 and legacy? === false) -> :trace
      level === 1 -> :debug
      level === 2 -> :info
      level === 3 -> :warning
      level === 4 -> :error
      (level === 5 and legacy? === false) -> :fatal
      true -> :unknown
    end
    
  end

  def alert_recipient(level, legacy?) do
    cond do
      to_label(level, legacy?) in [:error, :fatal] -> :ops
      (to_label(level, legacy?) === :unknown and legacy? === true) -> :dev1
      (to_label(level, legacy?) === :unknown and legacy? === false) -> :dev2
      true -> nil
    end
  end
end
