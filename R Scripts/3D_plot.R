library(plotly)

#Initial #D plot
plot_ly(
  data = RFM_score,
  x=~Recency,
  y=~Frequency,
  z=~Monetary
)