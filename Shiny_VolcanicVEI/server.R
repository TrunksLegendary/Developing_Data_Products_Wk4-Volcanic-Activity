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
