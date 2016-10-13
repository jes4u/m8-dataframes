# Exercise 5: Gates Foundation Educational Grants
setwd("C:/Users/Jesse/Desktop/AUT16/INFO 201/Modules/m8-dataframes/exercise-5/data")
# Read data into a variable called `grants` using the `read.csv` function
grants <- read.csv('gates_money.csv')

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org <- as.vector(grants$organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant <- mean(spending)

# What was the dollar amount of the largest grant?
top.grant <- max(spending)

# What was the dollar amount of the smallest grant?
bot.grant <- min(spending)

# Which organization received the largest grant?
org[grants$total_amount == top.grant]

# Which organization received the smallest grant?
org[grants$total_amount == bot.grant]

# How many grants were awarded in 2010?
length(as.vector(grants[grants$start_year == 2010,]$start_year))
