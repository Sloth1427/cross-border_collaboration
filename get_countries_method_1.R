#works reasonably

library(maps)
library(plyr)

# Load data from package maps
data(world.cities)

for (i in 1:nrow(pubmed_data)){
  print(i)
  
  if(is.na(pubmed_data$author_affiliations_2[i]) == FALSE){
    affils <- gsub('\\$\\$', " ", pubmed_data$author_affiliations_3[i])
    
    # Remove punctuation from data
    affils <- gsub("[[:punct:]]", "",affils)    ### *Edit*
    
    # Split data at word boundaries
    affils <- strsplit(affils, " ")
    
    countries <- llply(affils, function(x)x[which(x %in% world.cities$country.etc)])
    countries <- levels(as.factor(unlist(countries)))
    pubmed_data$countries_m1[i] <- paste(unlist(countries), collapse = "$$")
    
  }
}
