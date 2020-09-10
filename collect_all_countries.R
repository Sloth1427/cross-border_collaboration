all_countries <- c()

for (i in 1:nrow(country_tally_collabs)){
  print(i)
  
  #if(pubmed_data$num_countries[i] >= 1 && is.na(pubmed_data$countries_m1[i]) == FALSE){
  if(is.na(country_tally_collabs$countries_m1[i]) == FALSE){
    
    temp = unlist(strsplit(country_tally_collabs$countries_m1[i], '\\$\\$'))
    
    all_countries <- c(all_countries, temp)
  }
}

Country_collab_tally_correct <- count(all_countries)
