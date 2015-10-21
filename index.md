---
title       : Data_products_assignment
subtitle    : HTML5
author      : Me
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
github:
 user: Niru4
 repo: slidifydemo
---

## My slidfy Project

From: Aspiring Data Scientist

This is my first slidify created for this assignment


--- 
## DNASE Experiment


Deoxyribonuclease I (DNase)  in rat serum was investigated in 12 different runs.  The concentration and density were measured in this assay. 

This dataset is obtained from library(datasets), data("DNase")


--- 
  
---
## XY Plot
library(shiny)
library(datasets)
library(dplyr)
data("DNase")
shinyUI(pageWithSidebar(
  headerPanel('ELISA assay data for rat serum'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(DNase)),
    selectInput('ycol', 'Y Variable', names(DNase),
                selected=names(DNase)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 6)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))

The X varibale and Y varibale are two widgets to built the XY plot.  The user can select the variables to compare the trend 

---
## K means clustering

1. The data gets clustered into k means clustering algorithm.  The user can define the number of clusters and the number of groups or clusters are seen in different colors.

2. The data gets clustered into k means clustering algorithm.  The user can define the number of clusters and the number of groups or clusters are seen in different colors.
