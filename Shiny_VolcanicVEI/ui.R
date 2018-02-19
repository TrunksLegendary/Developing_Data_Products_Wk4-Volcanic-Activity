# Volcanoe
shinyUI(
  fluidPage(
    titlePanel("Volcanic Explosivity Index (VEI)"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("rangeInput","VEI", min(1), max=(7),value = c(1,7))),   
      
    mainPanel(leafletOutput("map",width = "100%", height = 400))
    )
  )
)