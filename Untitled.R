library(devtools)
library(slidify)
setwd("/Users/MALI/Documents/Coursera/courses/09_DevelopingDataProducts/project/assigment/")
author("data_products_assignment")
slidify("index.Rmd")
browseURL("index.html")
publish(user="Niru4", repo= "slidify")