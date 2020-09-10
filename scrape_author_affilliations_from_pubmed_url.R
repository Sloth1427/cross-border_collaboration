library(rvest)


for (i in 19994:nrow(pubmed_data)){
  #Sys.sleep(0.5) #pause
  print(i)
  url <- paste0("https://www.ncbi.nlm.nih.gov/pubmed/", pubmed_data$pubmedID[i])
  print(url)
  
  
  repeat{
    Sys.sleep(0.5) #pause
    print("attempted connection")
    html <- read_html(url, options = "NOERROR") #maybe try adding options = "NOERROR"
    if(class(html) != "try-error") break
  }
  
  author_affiliations <- html %>%
    html_nodes("dd") %>%
    html_text()

  #print(author_affiliations)
  author_affiliations <- head(author_affiliations, -1) #last two are not author affiliations
  print(paste0("number of affiliations: ", length(author_affiliations)))
  
  pubmed_data$author_affiliations[i] <- paste(author_affiliations, collapse = '$$') #join vector to one string
  #author_affiliations_split <- unlist(strsplit(author_affiliations, '\\$\\$'))
  
  #save every 1000
  if (i/500 == round(i/500)){
    write.csv(pubmed_data, file="pubmed_data.csv")
    print(paste("file written"))
  }
}
  
