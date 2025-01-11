# R course for beginners
# Week 9
# assignment by Noga Smadar
# ANALYSIS

#### CREATE THE DATAFRAME ----

# generate data
N = 100
subID <- seq(1, N, 1)
age <- runif(N, 18, 60)
gender <- factor(sample(c("woman", "man"), N, replace = T))
rt <- rnorm(N, 3000, 1500)
depression <- rnorm(N, 50, 20)
sleep_hours <- rnorm(N, 7, 2)

# enter the data into a dataframe
df = data.frame(subID, gender, rt, depression, sleep_hours)

#### DESCRIPTIVES WITH FUNCTION ----

# call function
source("./functions.R")

# use function
create_descriptives(df, 2, 13)
