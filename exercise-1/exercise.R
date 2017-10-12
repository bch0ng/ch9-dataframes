# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
seahawks.points.scored <- c(12, 27, 46, 16)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
seahawks.points.given <- c(9, 33, 18, 10)

# Combine your two vectors into a dataframe
seahawks.points <- data.frame(seahawks.points.scored, seahawks.points.given)

# Create a new column "diff" that is the difference in points
seahawks.points$diff <- abs(seahawks.points.scored - seahawks.points.given)

# Create a new column "won" which is TRUE if the Seahawks wom
seahawks.points$won <- (seahawks.points.scored > seahawks.points.given)

# Create a vector of the opponents
seahawks.opponents <- c("49ers", "Titans", "Colts", "Rams")

# Assign your dataframe rownames of their opponents
rownames(seahawks.points) <- seahawks.opponents
