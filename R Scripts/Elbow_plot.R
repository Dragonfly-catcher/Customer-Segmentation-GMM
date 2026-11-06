library(ggplot2)
library(purrr)

# Define a function to compute inertia (Total Within-Cluster Sum of Squares)
compute_inertia <- function(k) {
  # nstart = 25 ensures stable centroid initialization
  kmeans(model_data, centers = k, nstart = 25)$tot.withinss
}

# Evaluate K from 1 to 15
k_values <- 1:15
set.seed(42) # Set seed for reproducibility
inertia_values <- map_dbl(k_values, compute_inertia)

# Create a dataframe for ggplot
elbow_data <- data.frame(K = k_values, Inertia = inertia_values)

# Generate the Elbow Plot
ggplot(elbow_data, aes(x = K, y = Inertia)) +
  geom_line(color = "steelblue", size = 1) +
  geom_point(color = "darkred", size = 3) +
  scale_x_continuous(breaks = 1:15) +
  labs(
    title = "Elbow Method: Inertia (WCSS) vs. Number of Clusters",
    x = "Number of Clusters (K)",
    y = "Total Within-Cluster Sum of Squares (Inertia)"
  ) +
  theme_minimal()
