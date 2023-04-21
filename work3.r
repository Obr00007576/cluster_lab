library(cluster)

data(votes.repub)

d <- dist(votes.repub, method = "euclidean")

hc <- hclust(d, method = "ward.D")

plot(hc, hang = -1, main = "Cluster Dendrogram of votes.repub Dataset")