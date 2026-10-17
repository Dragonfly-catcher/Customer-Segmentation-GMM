df_retail <- df %>% 
  filter(
    Quantity>0,
    Quantity<=200,
    Price>0,
    Price<=100
  )

write_csv(df_retail, "Retail_Only_Dataset.csv")
write_feather(df_retail, "Retail_Only_Dataset.feather")