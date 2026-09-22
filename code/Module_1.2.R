24.5 + 1.2
32.0 / 4
1+1
hist(x=ChickWeight$weight,
     main="Chicken Weights",
     xlab="Weight",
     col="skyblue",
     border="white")
?hist #How does the histogram function work?
?t.test #What about a t-test?
#Install the yarrr package from CRAN
install.packages("yarrr")
#Load the yarrr package so I can use it!
library("yarrr")
pirateplot(formula=weight~Time,
           data=ChickWeight,
           pal="xmen")
yarrr::pirateplot(formula=weight~Diet,
                  data=ChickWeight)
