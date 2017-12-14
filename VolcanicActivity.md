Volcanic Activity
========================================================
author: Hiren Patel
date: December 07, 2017
autosize: true
transition: concave

App Description
========================================================
!["This is what a volcano eruption looks like: Source:](http://s4.thingpic.com/images/Dv/qAKfoU9ckhNH6Bmgf1VJWhkT.jpeg)

<https://www.thinglink.com/scene/777592745177907201>

***
A visualization of Volcanic activity troughout the world
reveals interesting patterns of activity. With the help 
of a "Shiny"" application, areas of volcanic activity reveal
"hot-spots" over time.

Data Source
========================================================

- From National Geophysical Data Center's Earthquake Database.
    National Geophysical Data Center / World Data Service (NGDC/WDS): 
    Significant Volcanic Eruptions Database. 
    National Geophysical Data Center, NOAA. doi:10.7289/V5JW8BSH
- See Links for details on Data Source and GitHub [Links](#/Links).

```r
# See original dataset dimensions
VolDat <- read.csv("Volcano.csv", header = TRUE)
dim(VolDat)
[1] 424   7
```

Summary of Volcainic Events
========================================================
![plot of chunk unnamed-chunk-2](VolcanicActivity-figure/unnamed-chunk-2-1.png)
***
- Great deal of variability between years
- Average Elevation is 2110.1533019
- Average Volcanic Explosivity Index (VEI) is 4

Links
========================================================

- GitHub Repo: <https://github.com/TrunksLegendary/developing_data_products_wk4> 
- Shiny App: <https://trunks.shinyapps.io/Shiny_VolcanicVEI/>
- NOAA : <https://www.ngdc.noaa.gov/nndc/servlet/ShowDatasets?dataset=102557&search_look=50&display_look=50>

