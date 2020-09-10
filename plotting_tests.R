
df_subset <- subset(df, country1_and_counry2_freq > 100)

plot(df_subset$distance_km, df_subset$collab_freq_as_pct_combined_output)