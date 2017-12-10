# Developing Data Products Week 4
## Shiny App
###1. Create a Shiny application and deploy it on Rstudio's servers. 

####Shiny Application Project Requirements:

- Write a shiny application with associated supporting documentation. The documentation should be   thought of as whatever a user will need to get started using your application.
-  Deploy the application on Rstudio's shiny server
-  Share the application link by pasting it into the provided text box
-  Share your server.R and ui.R code on github

####Shiny Application Project Features:

- Some form of input (widget: textbox, radio button, checkbox, ...)
- Some operation on the ui input in sever.R
- Some reactive output displayed as a result of server calculations
- You must also include enough documentation so that a novice user could use your application.
- The documentation should be at the Shiny website itself. Do not post to an external link.

###2. Create 5 slides (inclusive of the title slide) to pitch your app. You're going to create a web page using Slidify or Rstudio Presenter with an html5 slide deck.

- Must be done in Slidify or Rstudio Presenter
- Must be 5 pages
- Must be hosted on github or Rpubs
- Must contain some embedded R code that gets run when slidifying the document

Volcanic Activity
The shiny App plots volcanic activity around the world for over a 2000 year period of time. The Shiny App includes input controls to filter and modify the plot. Below are the final products.

https://link to shiny app

http://link to rpubs

## Data Source
National Geophysical Data Center / World Data Service (NGDC/WDS): 
    Significant Volcanic Eruptions Database. 
    National Geophysical Data Center, NOAA. doi:10.7289/V5JW8BSH
    
- NOAA : https://www.ngdc.noaa.gov/nndc/servlet/ShowDatasets?dataset=102557&search_look=50&display_look=50 

The Significant Volcanic Eruption Database is a global listing of over 500 significant eruptions which includes information on the latitude, longitude, elevation, type of volcano, and last known eruption. A significant eruption is classified as one that meets at least one of the following criteria: caused fatalities, caused moderate damage (approximately $1 million or more), with a Volcanic Explosivity Index (VEI) of 6 or larger, caused a tsunami, or was associated with a major earthquake. For a complete list of current and past activity for all volcanoes on the planet active during the last 10,000 years.

*File: Volcano.csv*

The dataset is a tab delimited file was converted to comma delimited file. Then, it was  transformed and exported.
Parameters for dataset selected for Volcanic activity over a 2000 year period of time.

https://www.ngdc.noaa.gov/nndc/servlet/ShowDatasets?dataset=102557&search_look=50&display_look=50

