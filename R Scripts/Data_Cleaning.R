library(dplyr)
library(readr)
df <- read_csv("Online_retail_UCI.csv")
final_df<-df[!is.na(df$`Customer ID`) & !grepl("^C", as.character(df$Invoice)) ,]
write_csv(final_df, "Final_Online_Retail_UCI.csv")