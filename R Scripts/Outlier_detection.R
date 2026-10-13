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
  coord_cartesian(xlim = c(0, 50), ylim = c(0, 150))+
  theme(legend.position = "none")

