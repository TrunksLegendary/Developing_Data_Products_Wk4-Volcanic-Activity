# Loads the Shiny and leaflet libraries.
library(shiny)
library(leaflet)

# http://rpubs.com/insight/leaflet

# Saves the breakfast cereal dataset to the `cereals` variable.
volmap <- read.csv("Voldata.csv", header=TRUE, stringsAsFactors=FALSE)

shinyUI(
  # Use a fluid Bootstrap layout
  fluidPage(
    # Give the page a title
    titlePanel("NYC Crime Statistics"),
    mainPanel(leafletOutput("map"))
  )
)

shinyServer(function(input, output) {
  # Create our colors with a categorical color function
  color <- colorFactor(topo.colors(7), volmap$CR)
  
  output$map <- renderLeaflet({
    map <- leaflet(volmap) %>%
      setView(lng = -73.98928, lat = 40.75042, zoom = 10) %>%
      addProviderTiles("CartoDB.Positron", options = providerTileOptions(noWrap = TRUE)) %>%
      addCircleMarkers(
        lng=~longitude,
        lat=~latitude,
        ele=~Elevation,
        vei=~VEI,
        stroke=FALSE,
        fillOpacity=0.5,
        color=~color(CR),
        popup=~paste(
          "<b>", CR, "</b><br/>",
          "count: ", as.character(TOT), "<br/>",
          "date: ", as.character(MO), "/", as.character(YR)
        )
      ) %>%
      addLegend(
        "bottomleft", # Legend position
        pal=color, # color palette
        values=~CR, # legend values
        opacity = 1,
        title="Type of Crime Committed"
      )
  })
})
 
