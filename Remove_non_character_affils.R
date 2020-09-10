#remove elements from affiliation that contain no alpha characters (e.g. PUBMED ID)

for (i in 1:nrow(pubmed_data)){
  
  if(pubmed_data$author_affiliations[i] != ""){
  
  print(i)
  author_affiliations_split <- unlist(strsplit(pubmed_data$author_affiliations[i], '\\$\\$'))
  author_affiliations_new <- c()
  
  for (j in 1:length(author_affiliations_split)){
    if(grepl("[:alpha:]", author_affiliations_split[j]) == TRUE){
      author_affiliations_new <- c(author_affiliations_new, author_affiliations_split[j])
      
    }
  }
  pubmed_data$author_affiliations_1[i] <- paste(author_affiliations_new, collapse = '$$')
  }
}

pubmed_data$author_affiliations_1[pubmed_data$author_affiliations_1 == "" ] = NA
write.csv(pubmed_data, file="pubmed_data.csv")
print(paste("file written"))