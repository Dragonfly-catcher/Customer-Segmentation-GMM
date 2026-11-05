#Color-coded plot
plot_ly(
  data=RFM_clustered_13,
  x = ~z_R,
  y = ~z_F,
  z = ~z_M,
  color = ~Cluster,
  colors = "Set1",
  marker=list(size=3, opacity=0.6)
) %>%
  layout(
    showlegend = FALSE, 
    scene = list(
      xaxis = list(title = "Scaled log(Recency)"),
      yaxis = list(title = "Scaled log(Frequency)"),
      zaxis = list(title = "Scaled log(Monetary)")
    )
  )
