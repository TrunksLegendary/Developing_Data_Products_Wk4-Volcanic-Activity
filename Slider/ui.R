# Define UI for slider demo app ----
ui <- fluidPage(

  titlePanel("Sliders"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("decimal", "Decimal:",
                  min = 1, max = 7,
                  value = 3, step = 1)
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Table summarizing the values entered ----
      tableOutput("values")
      
    )
  )
)