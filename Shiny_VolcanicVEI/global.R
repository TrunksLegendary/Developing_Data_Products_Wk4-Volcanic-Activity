# Loads the Shiny and leaflet libraries.
library(shiny)
library(leaflet)

volmap <- read.csv("Voldata.csv", header=TRUE, stringsAsFactors=FALSE)

