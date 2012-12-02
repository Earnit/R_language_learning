# Enter daily rainfall
rain = c(1.88, 2.23, 2.58, 2.07, 2.94, 2.29, 3.14, 2.14, 1.95, 2.51,
         2.86, 1.48, 1.12, 2.76, 1.48, 1.12, 2.76, 1.50, 2.99, 3.48,
         2.12, 4.69, 2.29, 2.12)

# Enter years, from : to
years = seq(1941:1964)

# Create data frame from variables
Dat = data.frame(years, rain)

# Plot
plot(Dat, type="l")
hist(Dat$rain)

# Produce result summaries
print(summary(Dat$rain))

# Print Standard Deviation
print(sd(Dat$rain))

# Remove all used objects
rm(list=ls())