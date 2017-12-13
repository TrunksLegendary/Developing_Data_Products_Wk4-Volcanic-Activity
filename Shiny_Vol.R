library(dplyr)
vol_data<-read.csv("Voldata.csv", stringsAsFactors = F, header=T)
vol_map = na.omit(vol_data)

library(leaflet)
colorscale<-colorNumeric(topo.colors(3), domain=1:8)
my_map<-leaflet(vol_map) %>% addTiles() %>% addCircleMarkers(lng=~longitude, 
                                                               lat=~latitude, 
                                                               radius=~Elevation/300, 
                                                               stroke=FALSE, 
                                                               fillOpacity=1, 
                                                               color=~colorscale(VEI), 
                                                               popup=~paste("Region:", Region, "\n", 
                                                                            "Lat:", latitude, 
                                                                            "Lng:", longitude,"\n", 
                                                                            "VEI:", VEI,"\n", 
                                                                            "Elevation:", Elevation, sep=" ")) %>% addLegend("bottomleft", pal=colorscale, values=~VEI, opacity=1, title="VEI") %>% setView(lng=94.5, lat=23.3, zoom=2)
my_map
