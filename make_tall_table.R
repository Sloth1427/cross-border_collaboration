
collab_pair_tally$country1 <- lapply(strsplit(as.character(collab_pair_tally$x), "<->"), "[", 1)
collab_pair_tally$country2 <- lapply(strsplit(as.character(collab_pair_tally$x), "<->"), "[", 2)
collab_pair_tally$collab_freq <- collab_pair_tally$freq

collab_pair_tally$country1_total_freq <- NA
collab_pair_tally$country2_total_freq <- NA

for (i in 1:nrow(collab_pair_tally)){
  country1 <- collab_pair_tally$country1[i]
  country2 <- collab_pair_tally$country2[i]
  
  collab_pair_tally$country1_total_freq[i] <- country_tally$freq[(which(country_tally$x == country1))]
  
  collab_pair_tally$country2_total_freq[i] <- country_tally$freq[(which(country_tally$x == country2))]
}

collab_pair_tally$collab_freq_as_pct_combined_output <- (collab_pair_tally$collab_freq/(collab_pair_tally$country1_total_freq + collab_pair_tally$country2_total_freq))*100

  