# Games

Game modules (all built under the "Games" namespace) created during 
the DockYard Elixir Boot Camp beta (Fall of 2022)

## Guessing Game
This is a number guessing game which accepts user input through the command line. `Games.GuessingGame` should prompt the user to guess a number between `1` and `10`, then compare the guess to a randomly generated number. Each time the user guesses, we tell them whether the guess is low or high...or a match.

### Examples
```
  iex(1)> Games.GuessingGame.start()
  Guess a number between 1 and 10: 4
  Too LOW ...
  Guess a number between 1 and 10: 8
  Too LOW ...
  Guess a number between 1 and 10: 9
  You GUESSED IT!
```


## Rock Paper Scissors

The classic rock paper scissors game ... in the `Games.RockPaperScissors` module. 

The game should prompt the user for a choice of "rock", "paper", or "scissors".

The game should generate a random AI choice of "rock" , "paper", or "scissors", then prompt the user with feedback if they win, lose, or draw.

