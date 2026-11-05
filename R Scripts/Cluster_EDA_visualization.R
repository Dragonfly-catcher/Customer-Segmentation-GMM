library(plotly)

#Cluster EDA plot
plot_ly(
  data=Cluster_EDA,
  x=~Median_Recency,
  y=~Median_Frequency,
  z=~Median_Monetary
)
