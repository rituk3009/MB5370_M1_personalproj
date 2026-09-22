#MB5370: Techniques in Marine Science 1
# Programming Fundamentals
#Ritu Krishna Raju
#15/09/2026

#---------------------------------------#
#Workshop 01. Practice
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
#Load the yarrr package so I can use it!
library("yarrr")
pirateplot(formula=weight~Time,
           data=ChickWeight,
           pal="xmen")
yarrr::pirateplot(formula=weight~Diet,
                  data=ChickWeight)
#Define a vector a as the integers from 1 to 5 
a<-1:5
#Print a 
a
#What is the mean of a?
mean(a)
# This is a comment I wrote

1 + 2
seq(from=0,to=100,by=2)

#Workshop 1.3 Functions and arguments 

years_old<-25.7
round(years_old)#rounds up
floor(years_old)#rounds down

years_old<-25.765
round(years_old,2)#comma after the object to specify argument

args(round)#use args in the Console

  
#Workshop 1.4 Objects and the assigment operator
## This section focuses on understanding how data is stored in R and why that matters.

#saving a single value 
coral_count<-42

#saving a vector of multiple fish lengths (in mm)
fish_lengths<-c(124,152,98,221,146)
coral_count+1
coral_count*2
Coral_count <- 1
coral_count+Coral_count

#01_age <- 25#starts with a number
#!_age <- 25#no special symbols
#coral count <- 25#no spaces
`coral count` <- 25#spaces used with back ticks

# Field survey data
quadrat_area_m2 <- 0.25
number_of_quadrats <- 16
total_area_surveyed <- (quadrat_area_m2 * number_of_quadrats)

# Let's print out the result
print(total_area_surveyed)

#Workshop 1.5 Packages

library(tidyverse)

#Workshop 1.6 Data types

#Assign variable values
site_name <- "Heron Island"
transect_depth_m <- 12.5
bleaching_present <- TRUE

#Check using function class()
class(site_name)
class(transect_depth_m)
class(bleaching_present)

#Tracking the age of an old-growth Porites coral colony
years_old <- 25.765

#Clean this up for summary report
round(years_old,2)

#make variables
years_old <- 25.765
rounded_age <- round(years_old,2)

#combine text and date variables
paste("Average colony age is", rounded_age, "years old")

#Workshop 1.7 Data structures

coral_spp <- c("Porites","Acropora","Montastrea")
notes <- c("Acropora",27.5,TRUE)
notes <- list("Acropora",27.5,TRUE)
notes

#data frames and tables 
my_dataframe <- data.frame(no=c(1,2,3),c("Plectropomus","Scarus","Pomacentrus"),c(TRUE,FALSE,TRUE))
my_dataframe
str(my_dataframe)

#-----------------------------------------------------------------------------------------------#
#Workshop 2
#22/09/2026

library(tidyverse)

#2.17
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy))
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy, colour=class))
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy,size=class))
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy,alpha=class))
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy,shape=class))
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy,colour="blue"))
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy,colour=displ<5))

#2.20
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy))+
  facet_wrap(~class,nrow=2)
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy))+
  facet_grid(drv~cyl)
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy))+
  facet_grid(.~cyl)




#----------------------------------------------------------------#
#Workshop 3
#22/09/2026

install.packages("usethis")


credentials::git_credential_ask()
usethis::git_sitrep()
git config --global core.editor "emacs"
usethis::use_github()
