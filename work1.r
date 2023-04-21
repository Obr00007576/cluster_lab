library(cluster)
library(factoextra)
data("pluton")

set.seed(111)
k <- 3
model <- kmeans(pluton, centers = k)

max_iter <- seq(2, 52)  # 最大迭代次数
wss <- numeric(length(max_iter))  # 用于存储簇内平方和的向量


print(model$size)
for (i in seq_along(max_iter)) {
    model <- kmeans(pluton, centers = k, nstart = 5, iter.max = max_iter[i])
    wss[[i]] <- sum(model$withinss)
}

plot(max_iter, wss, type = "b", xlab = "Maximum iterations", ylab = "Within-cluster sum of squares")