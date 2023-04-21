library(cluster)

# 加载数据集
data(animals)

# 计算距离矩阵
d <- dist(animals, method = "euclidean")

# 进行聚类
hc <- hclust(d, method = "ward.D")

# 绘制树状图
plot(hc, hang = -1, main = "Cluster Dendrogram of animals Dataset")