shinyUI(
  # Use a fluid Bootstrap layout
  fluidPage(
    # Give the page a title
    titlePanel("Volcanic Explosivity Index (VEI)"),
    mainPanel(leafletOutput("map",width = "150%", height = 500))
  )
)