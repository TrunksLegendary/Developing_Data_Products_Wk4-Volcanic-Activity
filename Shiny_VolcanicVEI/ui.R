<<<<<<< HEAD
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
=======
shinyUI(

  fluidPage(

    titlePanel("Volcanic Explosivity Index (VEI)"),
    
    sidebarPanel(

      h6("Use slider to filter for VEI Range"),
      sliderInput("rangeInput","VEI",min(1),max(7), 
                  value = c(1,7), step = 1)
    ),
    
    mainPanel(leafletOutput("map",width = "100%", height = 500))
  )
>>>>>>> 33b167336e85a860c50cd769b7b258a327344a75
)