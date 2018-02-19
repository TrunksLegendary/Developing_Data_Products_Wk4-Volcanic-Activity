#Volcanoe

# Loads the Shiny and leaflet libraries.
library(shiny)
library(leaflet)

library(dplyr)
library(lubridate)
library(ggplot2)
library(htmlTable)

volmap <- read.csv("Voldata.csv", header=TRUE)
summary(volmap)

