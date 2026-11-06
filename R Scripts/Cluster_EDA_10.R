Cluster_EDA_10 <- RFM_clustered_10 %>%
  group_by(Cluster) %>%
  summarise(
    Customer_count=n(),
    Median_Recency= median(Recency),
    Median_Frequency= median(Frequency),
    Median_Monetary= median(Monetary)
  ) %>% 
  arrange(desc(Median_Monetary))

write_csv(Cluster_EDA_10, "Cluster_EDA_10.csv")
