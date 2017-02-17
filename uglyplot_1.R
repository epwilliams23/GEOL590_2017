

install.packages("ggplot2")
install.packages("png")
install.packages("grid")

library(ggplot2)
library(png)
library(grid)



read.csv(file = "uglyplot.csv")
data<-data.frame(read.csv(file= "uglyplot.csv"))
img<-readPNG("protein.png")
g<- rasterGrob(img, interpolate=TRUE)

ggplot(data, 
       aes(x=Hours, y=fold.change, color=fold.change))+
  geom_point()+
  geom_smooth(method="lm", color = "red", linetype = 12, se = FALSE)+
  annotation_custom(g)+
  theme_dark()+
  theme(plot.background=element_rect(fill="yellow"))

