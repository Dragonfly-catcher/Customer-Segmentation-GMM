library(dplyr)
library(readr)
df <- read_csv("Datasets/Online_retail_UCI.csv")
#Now we trim the missing Customer ID and cancelled orders
final_df<-df[!is.na(df$`Customer ID`) & !grepl("^C", as.character(df$Invoice)) ,]
write_csv(final_df, "Final_Online_Retail_UCI.csv")