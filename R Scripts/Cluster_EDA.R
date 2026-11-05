#Post-Cluster Data Analysis
Cluster_EDA <- RFM_clustered_13 %>%
  group_by(Cluster) %>%
  summarise(
    Customer_count=n(),
    Median_Recency= median(Recency),
    Median_Frequency= median(Frequency),
    Median_Monetary= median(Monetary)
  ) %>% 
  arrange(desc(Median_Monetary))

write_csv(Cluster_EDA, "Cluster_EDA.csv")
