<<<<<<< HEAD
#Volcanoe

# Loads the Shiny and leaflet libraries.
library(shiny)
library(leaflet)

library(dplyr)
library(lubridate)
library(ggplot2)
library(htmlTable)

volmap <- read.csv("Voldata.csv", header=TRUE)


shinyServer(function(input, output) {

  vol_vei <- reactive ({
    volmap %>% filter(VEI >= input$rangeInput[1] & VEI <= input$rangeInput[2]) 
  })  
  
  color <- colorFactor(topo.colors(7), volmap$VEI)
  
  factpal <- reactive ({
    colorFactor(heat.colors(5),volmap$factor, reverse = TRUE) })
  
  output$map <- renderLeaflet({
    map <- leaflet(volmap) %>%
      leaflet(volmap, options = tileOptions(minZoom = 1)) 
      
  })
  
  observe ({
    pal <- factpal()
    leafletProxy("map",data = vol_vei()) %>%
      setView(lng = -4.520604, lat = 23.209818, zoom = 1) %>%
      #addProviderTiles("CartoDB.Positron", options = providerTileOptions(noWrap = TRUE)) %>%
      clearMarkers() %>% 
      clearControls() %>%
      addCircleMarkers(lng=~longitude, lat=~latitude, stroke=FALSE, fillOpacity=0.5, color=~color(VEI),
        popup=~paste(
          "Year: ", as.character(year), "<br/>",
          "Region: ", as.character(Region), "<br/>",
          "VEI: ", as.character(VEI), "<br/>"
        )
      ) %>%
      addLegend(
        "bottomleft", # Legend position
        pal=color, # color palette
        values=~vol_vei(VEI), # legend values
        opacity = 1,
        title="VEI"
      )
  })
  
  observe({
    proxy <- leafletProxy("map", data = volmap)
    
      proxy %>% clearTiles() %>%
        addProviderTiles(providers$OpenStreetMap)
      #  addProviderTiles(providers$Esri.OceanBasemap)
  })
})

=======
shinyServer(function(input, output) {

  color <- colorFactor(topo.colors(7), volmap$VEI)
  
  vol_vei <- reactive ({volmap %>% filter(VEI >= input$rangeInput[1] & VEI <= input$rangeInput[2])})
  
  factpal <- reactive ({
    colorFactor(heat.colors(7),volmap$VEI, reverse = TRUE) })
  
  output$map <- renderLeaflet({
    leaflet(volmap) %>%
      setView(lng = -4.520604, lat = 23.209818, zoom = 1) 
  })
  
  observe ({
    pal <- factpal()
    leafletProxy("map", data = vol_vei()) %>%
      clearMarkers() %>% clearControls() %>%

      addCircleMarkers(
        lng=~longitude,
        lat=~latitude,
        stroke=FALSE,
        fillOpacity=0.5,
        color=~color(VEI),
        popup=~paste(
          "Year: ", as.character(year), "<br/>",
         "Region: ", as.character(Region), "<br/>",
          "VEI: ", as.character(VEI), "<br/>" ) 
     ) %>%
      addLegend(pal=color, values=~VEI, opacity = 1, title="VEI") %>%
      #addLegend(title = "Magnitude", pal = pal, values = ~factor) %>%

     fitBounds(~min(longitude), ~min(latitude), ~max(longitude), ~max(latitude))
  })  
  
observe({
  proxy <- leafletProxy("map", data = volmap)
    proxy %>% clearTiles() %>%
#      addProviderTiles(OpenStreetMap)
      addProviderTiles(providers$Esri.WorldStreetMap)
    
})

})
>>>>>>> 33b167336e85a860c50cd769b7b258a327344a75
