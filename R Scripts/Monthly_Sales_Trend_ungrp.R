#Monthly Transactions
monthly_sales <- df %>%
  mutate(df, Revenue=df$Quantity*df$Price) %>%
  mutate(Month = floor_date(InvoiceDate, "month")) %>%
  group_by(Month) %>%
  summarise(TotalRevenue = sum(Revenue, na.rm = TRUE))
write_csv(monthly_sales, "Monthly_Sales.csv")

#Data Visualization
library(ggplot2)
ggplot(monthly_sales, aes(x=Month, y=TotalRevenue))+
  geom_line(color="steelblue", linewidth=2)+
  geom_point(color="red", size=3)+
  labs(title = "Monthly Revenue Trend", x="Month", y="Revenue")