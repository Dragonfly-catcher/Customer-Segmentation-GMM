RFM_log<- RFM_score %>% 
  mutate(
    log_R=log(Recency),
    log_F=log(Frequency),
    log_M=log(Monetary)
  )

#Plotting the log transformed RFM metrics
plot_ly(
  data=RFM_log,
  x=~log_R,
  y=~log_F,
  z=~log_M
)