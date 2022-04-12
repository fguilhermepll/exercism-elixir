defmodule TakeANumber do
  def start() do
    spawn(&loop/0)
  end

  def loop(state \\ 0) do
    receive do
      {:report_state, pid} -> send(pid, state)
      |>loop
      {:take_a_number, pid} -> send(pid, state + 1)
      |>loop
      :stop -> nil
      _ -> loop(0)
    end
  end
end
