seeds <- read.table("seeds_dataset.txt", header = FALSE)
colnames(seeds) <- c("area", "perimeter", "compactness", "grain_length", "grain_width", "asymmetry_coefficient", "spikelet_length")



clara_model <- clara(seeds, 3, metric = "euclidean", stand = TRUE)
clf <- fviz_cluster(clara_model, data = seeds, palette = "jco", ggtheme = theme_minimal())
plot(clf)