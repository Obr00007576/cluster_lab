library(cluster)
library(factoextra)

set.seed(123)
n <- 300
x <- c(rnorm(n/3, 0, 0.5), rnorm(n/3, 2, 0.2), rnorm(n/3, 2, 0.5))
y <- c(rnorm(n/3, 0, 4), rnorm(n/3, 5, 5), rnorm(n/3, -12, 1))
data <- cbind(x, y)
plot(data)

results <- list()
results[[1]] <- clara(data, 3, metric = "euclidean", stand = FALSE, samples = 100)
results[[2]] <- clara(data, 3, metric = "euclidean", stand = TRUE, samples = 100)
results[[3]] <- clara(data, 3, metric = "manhattan", stand = FALSE, samples = 100)
results[[4]] <- clara(data, 3, metric = "manhattan", stand = TRUE, samples = 100)
results[[5]] <- clara(data, 3, metric = "jaccard", stand = FALSE, samples = 100)
results[[6]] <- clara(data, 3, metric = "jaccard", stand = TRUE, samples = 100)

for(i in 1:length(results))
{
    plot <- fviz_cluster(results[[i]], data = my_data, palette = "jco", ggtheme = theme_minimal())
    plot(plot)
}