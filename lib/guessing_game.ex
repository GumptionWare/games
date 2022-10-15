defmodule Games.GuessingGame do
  def start(number_to_guess \\nil) do
    # Prompt the user to guess a number between 1 and 10.
    guess = IO.gets("Guess a number between 1 and 10: ") |> String.trim() |> String.to_integer()
    # Generate the number_to_guess unless we already have one:
    number_to_guess = number_to_guess || Enum.random(1..10)
    # Evaluate guess and lay again ...
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
