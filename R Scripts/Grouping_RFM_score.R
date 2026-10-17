library(lubridate)
df_retail<-read_feather("Retail_Only_Dataset.feather")

#Set a Reference Date 
reference_date<-max(df_retail$InvoiceDate)+days(1)

#Calculating the RFM score
RFM_score<- df_retail %>% group_by(df_retail$`Customer ID`) %>%
  summarise(
    #Recency score
    Recency= as.numeric(difftime(reference_date, max(InvoiceDate), units = "days")),
    
    #Frequency score
    Frequency=n_distinct(Invoice),
    # Simply adding up no. of entries won't work, we want no. of diff. transactions
    
    #Monetary score
    Monetary=sum(Quantity*Price)
  ) %>% ungroup() # To get rid of the grouping metadata

write_csv(RFM_score, "RFM_score.csv")
write_feather(RFM_score, "RFM_score.feather")
