#Get lon and lat from birth places
#Works!

# METHOD 2: CODE TO GET THE LATITUDE AND LONGITUDE OF A STREET ADDRESS WITH GOOGLE API
library(ggmap)
library(XML)
library(RCurl)


for (i in 1:nrow(country_tally)){
  Sys.sleep(1)
  print(i)

  addr <- as.character(country_tally$x[i])  # set your address here
  print(addr)
  url = paste('http://maps.google.com/maps/api/geocode/xml?address=', addr,'&sensor=false',sep='')  # construct the URL
  doc = xmlTreeParse(url) 
  root = xmlRoot(doc) 
  lat = xmlValue(root[['result']][['geometry']][['location']][['lat']]) 
  long = xmlValue(root[['result']][['geometry']][['location']][['lng']])
  
  country_tally$lon[i] <- long
  country_tally$lat[i] <- lat
  
}
  
