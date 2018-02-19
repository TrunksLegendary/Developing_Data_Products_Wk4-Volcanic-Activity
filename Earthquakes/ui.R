# Earthquake

# User Interface
library(shiny)
library(leaflet)

shinyUI(fluidPage(
  
  titlePanel("Title"),
  h6("Description"),
  sidebarPanel(
      sliderInput("rangeInput","Magnitude",min(5.0),max(10.0), 
                  value = c(5.0,10.0), step = 0.1)
  ),
  mainPanel(
      h6("Click on map markers to see specific earthquake event information."),
      leafletOutput("myMap", height = "400px")
  )
  
))
