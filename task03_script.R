a<-1
b<-2
c<-a+b
str(a)
str(c)

## a and b are double precision vector vectors
## c is a intevector

set.seed(0)
d <- rnorm(20)
e <- rnorm(20)
f <- d+e



vector.5 <- c(1:5)
attr(vector.5, "units")<-"celcuis"
attr(vector.5, "sample type")<-"climate type"


f1 <- factor(letters)
## creates a factor of letters from a to z

levels(f1) <- rev(levels(f1))
## reverses the factor of letters so its z to a

f2 <- rev(factor(letters))
f3 <- factor(letters, levels = rev(letters))

###reverses order back to a to z



##* 2.3.1.1: What does `dim` return when applied to a vector, **and why**?
## it gives you null as it needs 2 dimensions 

##* 2.4.5.1: What attributes does a data frame possess?
## column names , row names, class

##2.4.5.2: What does `as.matrix()` do when applied to a data frame with columns of different types?
##converts data.frame to a rows and columns form.

##* 2.4.5.3: Can you have a data frame with 0 rows? What about 0 columns?
## No as its 1 dimension so it needs a dimension.


read.csv(file= "2016_10_11_plate_reader.csv")
plate.reader<-data.frame(read.csv(file= "2016_10_11_plate_reader.csv", skip=33))

## it will skip the first 33 rows

str(plate.reader)

## structure
# well = Factor
# voltage = numerical
# r.sqaured = interger 

library()
install.packages("tidyverse")
installed.packages()

library(tidyverse)

tidy_plate<-read_csv(file = "2016_10_11_plate_reader.csv")

## made x3 collumn and added N/A to missing values


?mtcars
datasets::mtcars
my_mtcars<-datasets::mtcars
nrow(mtcars)
length(mtcars)

## nrow tells you how many rows there are where length tells you how many observations (columns) there are it tells you the same thing as the dim() command

dim(mtcars)


cyl2 <- my_mtcars$cyl

cyl3 <- my_mtcars[['cyl']]

cyl4 <- my_mtcars['cyl']

mpg_wt<-my_mtcars[c('mpg','wt')]

df.mtcars<-data.frame(mtcars)

mpg3.4df<-subset(df.mtcars, wt < 3.0 | wt > 4.0)

mpg3.4<-subset(my_mtcars, wt < 3.0 | wt > 4.0)

equal.median<-my_mtcars[c(which(my_mtcars$mpg == median(my_mtcars$mpg))),]




