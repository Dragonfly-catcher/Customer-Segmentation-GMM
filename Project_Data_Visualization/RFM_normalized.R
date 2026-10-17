RFM_scaled <- RFM_log %>% 
  mutate(
    z_R=as.numeric(scale(log_R)),
    z_F=as.numeric(scale(log_F)),
    z_M=as.numeric(scale(log_M))
  )

plot_ly(
  data=RFM_scaled,
  x=~z_R, 
  y=~z_F, 
  z=~z_M
)
