#################################################
#                                               #
#                  Lesson 2                     #
#                                               #
#################################################

# We will first install a package to read data into R.

install.packages("haven")
# Don't forget to "turn on" this pakage:

library(haven)

# there is also a package "foreign" that I showed in class, but "haven" works better. 
# for this lesson, we will use GSS2016. You can download it from this link:
# http://gss.norc.org/Documents/spss/2016_spss.zip

# Now place the datafile in your work folder and load the dataset:
# You might want to specify the path or change the working directory if you can't find the file this way.


gss <- read_sav("GSS2016.sav")

###################### 1. Working with data #################

# You can view the dataset using this command:

View(gss)

# If you are interested in the variable names, use this command

colnames(gss)

#Refer to the GSS codebook for what's in each variable.
# For now, let's look into the variable "sex"
# You can use the dollar sign ($) to refer to specific variables in a dataset
View(gss$sex)

# Whenever you refer to a variable, don't forget you first have to tell R where that variable is.

# The variable "sex" has many observations. you can view the first 10 with this command:

head(gss$sex, 10)

#Suppose you want to refer to the 5th variable. You can specify that with an index:
gss$sex[5]

# You can also use more complicated indiced. Suppose you only care about the sex of respondents aged 80 +

gss$sex[gss$age >=80]

# Indicis can get more complex that that. You can specify mulptiple conditions. 




###################### 2. Summarizing data #################

# This will give you a brief summary of the variable:
summary(gss$age)

# Remember that you can use indices to separately do summaries for men and women;

summary(gss$age[gss$sex == 1])

# Let's calculate the mean
mean(gss$age)

# This will produce NA. This is because some people didn't indicate their age.
# Suppose you want to find the average of 2 and an unknown number. You can't. Neither can R.
# You can add an option "na.rm = T" to remove missing values from condideration
mean(gss$age, na.rm = T)

# Other nice commands:
median(gss$age, na.rm = T)
quantile(gss$age, na.rm = TRUE)
sd(gss$age, na.rm = TRUE)
IQR(gss$age, na.rm = TRUE)
range(gss$age, na.rm = TRUE)

# Note that mode doesn't work. You can calculate the mode using indices though. You don't usually need this 
# so we'll skip it for now.


###################### 3. Plotting graphs #################


# These commands might not work immediately with the previously imported data.
# If you get this error: Error: `x` and `labels` must be same type
# Then run this code
library(foreign)
gss <- read.spss("GSS2016.sav", use.value.labels = F)

# Or even better download the dta file and do
gss <- read.dta("GSS2016.dta", convert.factors = F)


# Tabulate data
table(gss$marital)
# Box plot
barplot(table(gss$marital))

#box plot
boxplot(gss$age)

# You can draw a line on a box plot
abline(h = 65)


# Hisrogram
hist(gss$age)

# you can change the color

hist(gss$age, col = "magenta")
# You can add a rug
rug(gss$age)

# You can change the title
hist(gss$age, col = "magenta", main = "Age Distribution")

# You can change the labels too. I'll change the color too
hist(gss$age, col = "green", main = "Age Distribution", xlab = "Age")

# Don't forget that you can use ?commandname for help:

?hist