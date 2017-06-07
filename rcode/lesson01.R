#################################################
#                                               #
#                  Lesson 1                     #
#                                               #
#################################################


# In this class, we are starting to explore data in R.
# But before we do it, we need to cover a few more basics of R.

# Additional trainins is available in swirl.

library(swirl)
# Just a reminder to run swirl. We will not be using swirl in this lesson,
# but be sure to check what it has on the topics we cover. This lesson is based on
# swirl()

# We will talk about the following topics covered in the R programming class in swirl:
#
# 3. Sequences of numbers.
# 4. Vectors
# 5. Missing values.
# 7. Matrices and Data Frames
# 12. Looking at Data
# 15. Base Graphics.

# This is a lot to cover in one lesson, so do not feel discouraged if you get 
# confused at first.

############ 1.1. Sequences, vectors, missing values.

# Suppose you want to create a sequence of integers from 1 to 10.
# You can always type in:
c(1,2,3,4,5,6,7,8,9,10)

# It's much faster, however, to do it using the `:` operator

1:10

# We can define more sequences using this operator:

pi:10
10:1
10:pi

# If you need more info about this operator, you can always search for it:
?`:`

# Now suppose we want only odd numbers. We can do that using seq()

seq(1,9,by=2)

#Suppose you want 30 equally spaced numbers between 1 and 10:

seq(1,10, length=30)

# We can always check the length of the sequence using length()

length(5:10)

# What will this command do?
1:length(5:10)
# This is the same as:
seq(along.with = length(5:10))
#or
seq_along(length(5:10))
# One thing about R is that very often there are more than one way to solve a problem

# You can repeat the same number multiple times using rep()

rep(1, times = 10)

# We can use rep() to repeat vectors too
rep(c(1,2,3), times = 10)
rep(c(1,2,3), each = 10)


# Let's play around with vectors a bit more

soci120vector <- c(2, 5.5, -1, 0, 1)

# Let's do some logical tests
soci120vector < 1
soci120vector <= 1
soci120vector == 1
soci120vector != 1

# Vectors can also contain text
c("Statistics", "is", "cool!")

# Sometimes, information is missing.

soci120vector2 <- c(4,5,6,NA,3,NA)

# Let's play around with it
is.na(soci120vector2)
sum(is.na(soci120vector2))


# There's another type of missingness in R

0/0
Inf - Inf

# These are just not numbers.

############ 1.2. Matrices and data frames.

# Let's create a simple matrix
soci120vector3 <- 1:20
length(soci120vector3)
dim(soci120vector3)<- c(4,5)


matrix(1:20, nrow = 4, ncol = 5)


# Now let's add labels to it

candidates <- c("Donald", "Hillary", "Gary", "Jill")

rownames(soci120vector3) <- candidates

electdata <- data.frame(candidates, soci120vector3)


############ 1.3. Exploring data

library(foreign)

# read.dta, read.csv etc.
# class
# dim
# nrow and ncol
# object.size
# names()
# head() and tail()
# summary()
# table()
# str()

############ 1.4. graphs

# plot
# boxplot
# hist

