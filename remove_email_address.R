#remove email address from author affils
#sometimes contain 'Electronic address: blablahb;ah@blah.bl.ah.'

pubmed_data$author_affiliations_3 <- gsub('Electronic.*address: .*@.*', "", pubmed_data$author_affiliations_2)
