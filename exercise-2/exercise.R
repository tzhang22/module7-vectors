# Exercise 2: Subsetting and Manipulating Vectors

# Create a vector `x` that contains the numbers 5,2,6,2,1,7
x <- c(5, 2, 6, 2, 1, 7)

# Create a vector `y` that contains the numbers 2,3
y <- 2:3

# Create a vector `z` by adding (not combining, but adding) `x` and `y` (note the recycling!)
z <- x + y

# Create a vector `first.three` that has the first three elements of `z` in it
first.three <- c(z[1:3])

# Create a vector `small` that has the values of `z` that are less than 5
z.is.small <- z < 5
small <- z[z.is.small]

# Create a vector `large` that has the values of `z` that are greater than or equal to 5
z.is.large <- z >= 5
large <- z[z.is.large]

### Bonus ###

# Replace the values in `z` that are larger than 5 with the number 5
z[z.is.large] <- 5

# Replace every other value in `z` with the number 0
z[z.is.small] <- 0