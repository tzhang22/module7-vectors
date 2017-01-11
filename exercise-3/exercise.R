# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 colors (representing marbles).
marbles <- c("red", "green", "blue", "purple", "cyan", "white")

# Use the `sample()` function to randomly select a single marble
sample(marbles)

# Define a function called MarbleGame. This function should:
# - Takes in a single argument `guess` that is a guess at what color marble will be drawn
# - Randomly samples a marble from the vector
# - Returns whether or not the person guessed accurately (preferrably a character string phrase)
MarbleGame <- function(guess) {
    answer <- sample(marbles)[1]
    if (guess == answer) {
        return (TRUE)
    }
    return (FALSE)
}

# Play the marble game by guessing a color!
MarbleGame("cyan")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
# Hint, you'll need to use a `while` control structure, which is not covered in the module
tries <- 0
while (!MarbleGame("cyan")) {
    MarbleGame(sample(marbles)[1])
    tries <- tries + 1
}

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
games <- 0
while (games < 1000) {
    tries <- 0
    tries <- tries + 1
    if (MarbleGame("cyan")) {
        all.tries <- +tries
        tries <- 0
    }
    games <- games + 1
}
avg.tries <- sum(all.tries) / 1000
