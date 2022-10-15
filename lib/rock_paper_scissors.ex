defmodule Games.RockPaperScissors do
 @moduledoc """
  Documentation for `Games.RockPaperScissors`.

  The classic rock paper scissors game.

  The game should prompt the user for a choice of "rock", "paper", or "scissors".

  The game should generate a random AI choice of "rock" , "paper", or "scissors",
  then prompt the user with feedback if they win, lose, or draw.

  """

  @doc """
  start() Play the game.

  ## Examples

  iex(1)> Games.RockPaperScissors.start()

  (rock/paper/scissors): scissors
  "You win! scissors beats paper."

  # randomly generated scissors for the opponent
  (rock/paper/scissors): paper
  "You lose! scissors beats paper."

  # randomly generated rock for the opponent
  (rock/paper/scissors): rock
  "It's a tie!"

  THE RULES:
  Rock wins against scissors.
  Scissors win against paper.
  Paper wins against rock.

  """
  def start do
    # :application.get_key(:games, :modules) |> IO.inspect
    # The secret sauce: Define winning plays
    player_wins = [{"rock", "scissors"}, {"scissors", "paper"}, {"paper", "rock"}]
    ai_wins = [{"scissors", "rock"}, {"paper", "scissors"}, {"rock", "paper"}]
    tie_round = [{"scissors", "scissors"}, {"paper", "paper"}, {"rock", "rock"}]

    # Prompt the user for their play choice
    player_selection = IO.gets("(rock/paper/scissors): ") |> String.trim()
    # Generate the ai_selection:
    ai_selection = Enum.random(["rock", "paper", "scissors"])
    IO.inspect(ai_selection, label: "AI")
    # Evaluate who wins (or tie) ...
    cond do
      {player_selection, ai_selection} in player_wins ->
        IO.puts("You win! #{player_selection} beats #{ai_selection}.")
      {ai_selection, player_selection} in ai_wins ->
        IO.puts("You lose! #{ai_selection} beats #{player_selection}.")
      {player_selection, ai_selection} in tie_round ->
        IO.puts("It's a tie! #{ai_selection} is evenly matched with #{player_selection}.")
        # Games.RockPaperScissors.start()
      # Bad input catch-all:
      true -> IO.puts("INVALID choice. You must be playing a different game.")
    end
    # Another round:
    Games.RockPaperScissors.start()

  end

end
