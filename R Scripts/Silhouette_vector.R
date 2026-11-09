library(cluster)
silhouette_scores<-numeric(19)
for(i in 2:20)
  {
    gmm_fit<-Mclust(model_data, G=i, modelNames="VEV")
    sil_idx<- silhouette(gmm_fit$classification, dist(model_data))
    silhouette_scores[i-1]<-summary(sil_idx)$avg.width
  }
print(silhouette_scores)

plot(
  silhouette_scores,
  type='o',
  col="red",
  xlab="# Clusters in GMM model",
  ylab="Calculated Silhouette Score",
  main="Silhouette Scores across #Clusters"
)
abline(h=0, col="blue", type="-")
