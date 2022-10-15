defmodule Games.GuessingGame do
  @moduledoc """
  Documentation for `Games.GuessingGame`.

  This is a number guessing game which accepts user input through the command line.
  Games.GuessingGame` should prompt the user to guess a number between `1` and `10`.

  """

  @doc """
  start() Play the game.

  ## Examples

  iex(1)> Games.GuessingGame.start()
  Guess a number between 1 and 10: 4
  Too LOW ...
  Guess a number between 1 and 10: 8
  Too LOW ...
  Guess a number between 1 and 10: 9
  You GUESSED IT!

  """
  def start(number_to_guess \\nil) do
    # Prompt the user to guess a number between 1 and 10.
    guess = IO.gets("Guess a number between 1 and 10: ") |> String.trim() |> String.to_integer()
    # Generate the number_to_guess unless we already have one:
    number_to_guess = number_to_guess || Enum.random(1..10)
    # Evaluate guess and play again ...
    if guess == number_to_guess do
        IO.puts("You GUESSED IT!\n")
        Games.GuessingGame.start(nil)
    else
        cond do
          guess < number_to_guess -> IO.puts("Too LOW ...")
          true -> IO.puts("Too HIGH ...")
        end
        Games.GuessingGame.start(number_to_guess)
    end
  end
end
