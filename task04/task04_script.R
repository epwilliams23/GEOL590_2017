


### the x axis is numbered wrong and there could have been a break in the x axis so that you dont have so much deat space where the ink-data ratio is off





?diamonds
diamonds<-diamonds
library(ggplot)
?head
?set.seed
str(diamonds)
dim(diamonds)
nrow(diamonds)


set.seed(1410)

## This function generates a set of pseudo random numbers and the number that you give it provides a set that can be recalled to validate data using the same set of random numbers

dsmall <- diamonds[sample(nrow(diamonds), 100), ]

## the function gives a subset of the dataset diamonds where the subset consit out of the a 100 rows that have been randomly selected using the seed set with the previous funtion. It also gives you the data in with all of the columns.



diamonds[sample(nrow(diamonds), 100), ]

dsmall.df<- data.frame(dsmall)


##First scatter plot

ggplot(dsmall, 
       aes(x=x, y=y, color = z ))+
  geom_point()+
  facet_wrap(~cut)

####

###second scatter plot


ggplot(dsmall, 
       aes(x=carat, y=price, color = cut ))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE)

###

###third

ggplot(dsmall,
       aes(carat, color = clarity))+
  geom_density() +
  facet_wrap(~clarity)

###

###forth boxplot

ggplot(dsmall, 
      aes(x=cut, y=price))+
  geom_boxplot()

###

###fifth plot

ggplot(dsmall,
       aes(x=x, y=y, color="red"))+
  geom_point()+
  geom_smooth(method = "lm", color = "blue", linetype = 2, se = FALSE )+
  xlab("x, in mm")+
  ylab("y, in mm")+
  theme(legend.position = "none")


###




  
