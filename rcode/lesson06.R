### Example of regression analysis

regdat <- read_dta("~/Downloads/global13sdss.dta")


reg1 <- lm(lifeexpfemale ~ gdp, data = regdat)
summary(reg1)
plot(lifeexpfemale ~ gdppercap, data = regdat)
