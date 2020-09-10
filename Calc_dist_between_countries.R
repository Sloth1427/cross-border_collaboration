#Calc distance between countries
library(geosphere)

#distance in km

for (i in 1:nrow(df)){
  
    print(i)
    
    lon1 <- as.numeric(df$country1_lon[i])
    lat1 <- as.numeric(df$country1_lat[i])
    
    lon2 <- as.numeric(df$country2_lon[i])
    lat2 <- as.numeric(df$country2_lat[i])
    
    
    df$distance_km[i] <- (distm(c(lon1, lat1), c(lon2, lat2), fun = distHaversine))/1000
  
}