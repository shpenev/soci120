#################################################
#                                               #
#                  Lesson 0                     #
#                                               #
#################################################


# In this class we will start using R. 
# Note that all of the text here starts with a # sign.
# This way I am telling R to completely ignore these lines.
# This is called 'comments'. It's a good strategy to include comments in your files,
# as this allows you to write memos about what the code is doing.


########## 00. Installing packages ##############

# R is very powerful and flexible. One of the greatest advantages of R is that it 
# allows you to write your own commands. You can then share them online for other 
# people to use. When people do that, the commands they wrote are called 'packages'
# Let's install an example package

install.packages("swirl")
# This command is telling R to install a package called 'swirl'
# Alternatively, you can go to the menu and choose Tools -> Install Packages... 

# R might have very many packages installed. Mostly, you don't need them all. 
# There is a list of packages displayed in R studio on the right.
# The packages have tick marks. What these tick marks do is 'load' the package in memory,
# so that only the ones you need are loaded.
# You can now tick the packages you want to load or alternatively use a command:

library("swirl")

# Swirl is a package that teaches you R. You can follow the prompts it's giving you. 
# Today we will do the module 1: R Programming: The basicts of programming in R
# Below is a brief recap of that lesson using a few other examples.

#### 1.1. Basic building blocks

# R can work as a calculator

2+2

2*3

3^2

sqrt(9)

# We might want to save the results of any calculation in a variable.

age <- 20 + 9

# You can now view the results of this if you call for the variable name

age

# Now suppose we want to know when we were born. Let's do somthing simple

year <- 2017 - age

year

# You can create vectors with c() command.

vector <- c(18, 34, 45)

# You can now do arithmetic operations with this vector

vector2 <- vector*3 + 200

vector3 <- vector/vector2

# Notice that R does vector operations element by element.
# If there are more elements in one vector, R will recycle 
# elements of the second vector

x <- c(2,4)
y <- c(3,7,11,13)

x*y

# If the number of elements of one vector is not a multiple of the number 
# of elements in another vector, R will issue a warning.









