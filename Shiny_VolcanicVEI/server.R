shinyServer(function(input, output) {

  color <- colorFactor(topo.colors(7), volmap$VEI)
  
  output$map <- renderLeaflet({
    map <- leaflet(volmap) %>%
      setView(lng = -4.520604, lat = 23.209818, zoom = 2) %>%
      addProviderTiles("CartoDB.Positron", options = providerTileOptions(noWrap = TRUE)) %>%
      addCircleMarkers(
        lng=~longitude,
        lat=~latitude,
        stroke=FALSE,
        fillOpacity=0.5,
        color=~color(VEI),
        popup=~paste(
          "Year: ", as.character(year), "<br/>",
          "Region: ", as.character(Region), "<br/>",
          "VEI: ", as.character(VEI), "<br/>"
        )
      ) %>%
      addLegend(
        "bottomleft", # Legend position
        pal=color, # color palette
        values=~VEI, # legend values
        opacity = 1,
        title="VEI"
      )
  })
})