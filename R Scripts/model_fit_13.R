set.seed(0)
gmm_fit_13 <- Mclust(model_data, G=13, modelNames = "VEV")

#Attaching the cluster labels
RFM_clustered_13 <- RFM_scaled %>%
  mutate(
    Cluster=as.factor(gmm_fit_13$classification),
    Uncertainty=gmm_fit_13$uncertainty
  )
