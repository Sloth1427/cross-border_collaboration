#also split author affiliations by ";"

for (i in 1:nrow(pubmed_data)){
  print(i)
  if(is.na(pubmed_data$author_affiliations_1[i]) == FALSE){
    author_affiliations_split <- unlist(strsplit(pubmed_data$author_affiliations_1[i], '\\$\\$'))
    author_affiliations_new <- c()
    
    for (j in 1:length(author_affiliations_split)){
      temp <- unlist(strsplit(author_affiliations_split[j], ";"))  
      author_affiliations_new <- c(author_affiliations_new, temp)
    }
        
    pubmed_data$author_affiliations_2[i] <- paste(author_affiliations_new, collapse = '$$')  
  }
}

    