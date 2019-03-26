###############################################################################
#
# File: hypotesis_testing.R
#
# Comment: Implementing a t.student test to make an hypotesis testing.
#          Checking if apopulation follows a normal distribution with 
#           Shapiro-Walk test.
# 
###############################################################################

# The rain in a location measures per month in mm3 is available in vector rain
rain <- c(91, 81, 46, 72, 55, 15, 17, 13, 21, 52, 81, 101)

mean(rain)


# Example 1:
# Considering that the average rain in this location is 70,6 mm3,
# was the measured year normal?

# H0 = 70.6  vs H1 <> 70.6

t.test(rain, mu = 70.6)
# H0 rejected, H1 accepted. The year was not normal


# Example 2:
# Again considering that the average rain in this location is 70,6 mm3,
# has it rain less than normal?

# H0 < 70.6  vs H1 >= 70.6
t.test(rain, mu = 70.6, alternative = "greater")

# H0 accepted. Its p-value is ~94%.


# NOTE:
  
# p-value is the probability of the difference between the 
# sample average and thepopulation average to be as expected.
# For	p-valuesbelow	1%, it is common to reject the null hypotesis.	
# For value above 10% is is common to accept.
# In between the decision is not clear.


# Because the sample is < 30, a test must be made to check 
# if the measure data follows a notmal distribution
shapiro.test(rain)

# p-value > 1, so it is not possible to reject that the samples 
# follows a normal distribution