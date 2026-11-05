library(ggplot2)
library(readr)
df<-read_csv("Final_Online_Retail_UCI.csv")
# We shall sort out the wholesalers here
ggplot(df, aes(x=Price, y=Quantity, color=Country))+
  geom_point(size=3, alpha=0.5)

# You shall experience a violent outlier squish.
# We shall get rid of the legends and the outliers to focus on the cluster
ggplot(df, aes(x=Price, y=Quantity, color=Country))+
  geom_point(size=2, alpha=0.5)+
  coord_cartesian(xlim = c(0, 100), ylim = c(0, 200))+
  theme(legend.position = "none")
# The quantity cap is to ensure pure B2C transactions while the price cap 
# takes care of the administrative entry issues, if any. 

