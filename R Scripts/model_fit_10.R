set.seed(0)
gmm_fit_10 <- Mclust(model_data, G=10, modelNames = "VEV")

#Attaching the cluster labels
RFM_clustered_10 <- RFM_scaled %>%
  mutate(
    Cluster=as.factor(gmm_fit_10$classification),
    Uncertainty=gmm_fit_10$uncertainty
  )
