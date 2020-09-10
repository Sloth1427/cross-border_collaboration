library(rworldmap)
library(countrycode)

#Country_collab_pct_correct_min_50$ISO3 <- countrycode(Country_collab_pct_correct_min_50$x, "country.name", "iso3c")

#remove incoorect "Jersey"

#Country_collab_pct_correct_min_50 <- subset(Country_collab_pct_correct_min_50, x!="Jersey")

####
mapDevice()
sPDF <- joinCountryData2Map(Country_collab_pct_correct_min_50, nameJoinColumn = "ISO3")


#palette <- c("yellow","orange","red")
#palette <- 'rainbow'
palette <- c("pink","red","black")


mapParams <- mapCountryData(sPDF, 
               nameColumnToPlot = "pct_collab", 
               catMethod = "pretty", 
               numCats = 100, 
               colourPalette = palette, 
               mapRegion = 'Europe', 
               borderCol='black', 
               oceanCol = 'lightblue', 
               missingCountryCol='white',
               lwd = 2.0,
               addLegend = TRUE
               )





# #### map pct collab 
# sPDF <- joinCountryData2Map(Pct_point_change_for_map, nameJoinColumn = "ISO3")
# mapDevice()
# mapCountryData(sPDF, nameColumnToPlot = "Pct.point.change", catMethod = "diverging", numCats = 40, colourPalette = c("red","white","black"))
