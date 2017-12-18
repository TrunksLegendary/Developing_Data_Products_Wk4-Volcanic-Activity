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
)