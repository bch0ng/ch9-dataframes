# Exercise 6: Husky Football 2016 Season
# Read in the Husky Football 2016 game data into a variable called `husky.games.2016`
husky.games.2016 <- read.csv("data/huskies_2016.csv", stringsAsFactors = FALSE)
# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- husky.games.2016$opponent

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2016$uw_score

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2016$rushing_yards
passing.yards <- husky.games.2016$passing_yards

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards

# What is the score of the game where the Huskies had the most combined yards?
husky.games.2016[combined.yards == max(combined.yards), "uw_score"]

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(games) {
  opponents <- games$opponent
  scores <- games$score
  combined.yards <- games$rushing_yards + games$passing_yards  
  most.yards.index <- (combined.yards == max(combined.yards))
  return(paste0("Against ", opponents[most.yards.index], ", UW scored ", husky.scores[most.yards.index], 
                " points with a total of ", max(combined.yards), " combined yards of passing and rushing."))
}

# What was the highest yardage game so far last season?
# Hint: Read in the dataset titled `huskies_2015.csv` and save it as a variable
husky.games.2015 <- read.csv("data/huskies_2015.csv", stringsAsFactors = FALSE)
MostYardsScore(husky.games.2015)

### Bonus ###
# When working with data, you will often find yourself manually adding data into your dataset.
# This bonus will help you practice such skills.
# Using resources online, find out whether each game was played at home or away.
# Create a vector `where.played` that corresponds to what you found.
# Add the vector `where.played` as a new column to `husky.games.2016`
# Hint: For bowl games simply listing "bowl" will be fine.
where.played <- c("Home", "Home", "Home", "Away", "Home", "Away", "Home", 
                  "Away", "Away", "Home", "Home", "Away", "Bowl", "Bowl")
husky.games.2016$where.played <- where.played

