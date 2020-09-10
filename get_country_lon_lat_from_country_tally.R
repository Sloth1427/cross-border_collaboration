#get lon and lat from country list in country_tally dataframe

for (i in 1:nrow(df)){
  
  country1 <- df$country1[i]
  country2 <- df$country2[i]
  
  df$country1_lon[i] <- country_tally$lon[(which(country_tally$x == country1))]
  df$country1_lat[i] <- country_tally$lat[(which(country_tally$x == country1))]
  
  df$country2_lon[i] <- country_tally$lon[(which(country_tally$x == country2))]
  df$country2_lat[i] <- country_tally$lat[(which(country_tally$x == country2))]
}

  
  