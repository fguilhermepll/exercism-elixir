defmodule GuessingGame do
  def compare(number, guess \\ :no_guess)
  def compare(secret_number, guess) when secret_number == guess, do: "Correct"
  def compare(secret_number, :no_guess), do: "Make a guess"
  def compare(secret_number, guess) when abs(guess - secret_number) == 1, do: "So close"
  def compare(secret_number, guess) when guess > secret_number, do: "Too high"
  def compare(secret_number, guess) when guess < secret_number, do: "Too low"
end
