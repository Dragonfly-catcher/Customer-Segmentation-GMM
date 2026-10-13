df_retail <- df %>% 
  filter(
    Quantity>0,
    Quantity<=400,
    Price>0,
    Price<=100
  )