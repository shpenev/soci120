
####### STATISTICAL TESTS IN R ###############


# We are continuing to use the GSS data for our analysis.


####### T-TEST ########

# T-test allows us to test whether the two means are the same.
# Let's see if the mean age of men and women is the same
# We will use the "formula" notation here using the ~ symbol

t.test(age ~ sex, data = gss)

# The output gives us a p-value of less than 5% -> H0 is rejected.

# T-test can also be used to construct confidence intervals for variables:

t.test(gss$age)


####### CHI2 TEST ########

# Chi2 test allows us to test whether there is an association between two categorical variables
# Let's test if there is an association between sex and views on gun laws.

table(gss$sex, gss$gunlaw)
chisq.test(table(gss$sex, gss$gunlaw))

# P-value is so small that we can safely reject H0 at 5% level.


###### ANOVA (F-TEST) ##########

# If we have more than one category it might be advisable to use F-test 
# (to avoid the problem of multiple comparisons)

# We can test if education differes by sex
summary(aov(educ ~ sex, data = gss))

# Or if it differs by marital status
# This will need to use the factor() operation. otherwise, R will think the variable
# is interval ratio
summary(aov(educ ~ marital, data = gss))
summary(aov(educ ~ factor(marital), data = gss))

# We can add additional explanatory variables
summary(aov(educ ~ factor(marital) + sex, data = gss))

# You can also multiply factors to interact them:
summary(aov(educ ~ factor(marital)*sex, data = gss))




