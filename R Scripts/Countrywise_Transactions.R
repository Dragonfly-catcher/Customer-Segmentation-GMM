#Sorting number of transactions across the countries
top_countries <- df %>%
  group_by(Country) %>%
  summarise(Transactions = n()) %>%
  arrange(desc(Transactions))

library(arrow)
write_feather(top_countries, "Countrywise_Transactions.feather")
#Feather extensions are for fast loading (can't view, binary)
write_csv(top_countries,"Countrywise_Transactions_Dataset.csv")
#CSV files are for viewing

#For plotting, we shall take only the first 10 countries
top_10_countries<-top_countries %>% head(10)
ggplot(top_10_countries)+
  geom_bar(mapping=aes(x=reorder(Country, Transactions), y=Transactions), stat="identity", fill="greenyellow")+
  coord_flip()+labs(title="Countrywise Distributions of Transactions")
#Note that this reorder is necessary as otherwise the countries will be plotted in random order
#See Country_transaction_uo attached
#The coord_flip is to ease the readability




