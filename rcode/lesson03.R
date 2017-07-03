


income <- c(11350, 7859, 41654, 13445, 17458, 8451, 15436, 18342,
            19354, 22545, 25345, 68100, 9368, 47567, 18923, 16456,
            27654, 16452, 23890, 25671)


mean(income)
sd(income)
hist(income)

set.seed(1)
smplincome <- sample(income, 3)
smplincome

mean(smplincome)
sd(smplincome)
hist(smplincome)


n <- 10000
smplincome <- rep(1,n)
for(i in 1:n){
  smplincome[i] <- mean(sample(income, 3, replace = T))
}

mean(smplincome)
sd(smplincome)
hist(smplincome)


