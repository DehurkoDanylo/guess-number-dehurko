# Guess the Number with Leo

Welcome to the "Guess the Number" program, an elegant demonstration of the Leo programming language's capabilities from the Aleo project. Leo's expressive syntax and Aleo's robust blockchain technology blend together to create a secure and decentralized gaming experience.

## Project Overview

In this program, players attempt to guess a randomly generated number within a specified range. The magic happens on the Aleo blockchain, where the guess, along with a random number, is generated within the defined boundaries and securely recorded using the line `Mapping::set(plays, play.owner, play);`. This ensures that each play is transparently and immutably logged on the blockchain.

## Program Mechanics

- Players provide two numbers defining the range for the random number generation.
- A random number within the specified range is generated on the blockchain.
- The program compares the player's guess to the generated number.
- The outcome (whether the guess is correct or not) along with the blockchain height at the time of the guess, is recorded.

## Running the Program Locally

Leo provides a command line interface for compiling and running Leo programs.

### Specifying Inputs via the Command Line

1. To run the program with command line inputs, execute:
   
   ```bash
   leo run guessTransition <minNum> <maxNum> <guessed>
   ```

   Replace `<minNum>` and `<maxNum>` with your chosen range, and `<guessed>` with your guess.

### Using an Input File

1. Update the `inputs/guess_the_number.in` with your desired range and guess.
2. Execute the following to run the program:

   ```bash
   leo run guessTransition
   ```

## Executing the Program on the Blockchain

To execute the program on the Aleo blockchain, you should use:

```bash
leo execute guessTransition <minNum> <maxNum> <guessed>
```

Replace `<minNum>` and `<maxNum>` with your chosen range, and `<guessed>` with your guess. This command will interact with the blockchain and store the play.

> Authored by Dehurko Danylo, embracing the future of blockchain with Aleo and Leo.
