library(cluster)
sil_idx_13 <- silhouette(gmm_fit_13$classification, dist(model_data))
print(summary(sil_idx_13)$avg.width)
plot(sil_idx_13, main="Silhouette Plot for #Clusters=13", col=1:13)
#Use sil_idx_10 for the clusters 10.
# obtained avg widths are :C13=-0.0285, C10=0.00996
