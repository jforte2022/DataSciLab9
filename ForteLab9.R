setwd("C:/Users/andre/OneDrive/Desktop/IntroDataSci")
# install.packages("VGAM", repos = "http://cran.us.r-project.org")
library(VGAM)

# Task 1
# 1. Generate a normal distribution, or 1,000 samples, with a mean of 80.
distribution <- rnorm(1000, 80)

# 2. Write a function that takes three variables – a vector, a min and a max – and returns the number of elements in the vector that are between the min and max (including the min and max). 
myFunction <-function(vector, min, max){
  b <- length(vector[(vector >= min) & (vector <= max)])
  return(b)
}

# 3. Use the function to see how many of your normal distribution samples are within the range of 79 to 81. Pass the "distribution" as the vector parameter, 79 as the minimum parameter, and 81 as the maximum parameter.
myFunction(distribution, 79, 81)

# 4. Repeat 3 times (creating a normal distribution and then calling your function) to see if the results vary.
myFunction(rnorm(1000, 80), 79, 81)
myFunction(rnorm(1000, 80), 79, 81)
myFunction(rnorm(1000, 80), 79, 81)

# Task 2
# 1. Generate 51 random numbers in a Pareto distribution and assign them to a variable called“FSApops.” ** shape and scale arguments will be explained in 2.
# FSApops <- rpareto(51, m, s)

# 2. Specify a “scale” and a “shape” for your Pareto distribution that makes it as similar as possible to the actual distribution of state populations on page 90 of the textbook.
FSApops <- rpareto(51, 581348, 1)

# 3. Create a histogram that shows the distribution of values in FSApops.
hist(FSApops)

# 4. Use a command to report the actual mean and standard deviation of the 51 values stored in FSApops.
mean(FSApops)
sd(FSApops)

# 5. Use a command to report the minimum and maximum value of FSApops.
min(FSApops)
max(FSApops)