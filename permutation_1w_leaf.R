#leaf
load("expression.pattern.leaf.sal.RData")
cluster.num <- data.frame(array(0,c(10000, 9)))
colnames(cluster.num) <- c("up_up", "up_down", "up_flat", "flat_up", "down_down", "down_up", "down_flat", "flat_down", "flat_flat")
for (j in 1:10000) {
	results <- c()
	for (i in 1:nrow(pattern)){
		trend <- as.character(pattern[i, c(2:7)])
		cluster <- sample(trend, 1, replace = F)
		results <- c(results, cluster)
	}
	up_up.num <- length(which(results == "up_up"))
	up_down.num <- length(which(results == "up_down"))
	up_flat.num <- length(which(results == "up_flat"))
	flat_up.num <- length(which(results == "flat_up"))
	down_down.num <- length(which(results == "down_down"))
	down_up.num <- length(which(results == "down_up"))
	down_flat.num <- length(which(results == "down_flat"))
	flat_down.num <- length(which(results == "flat_down"))
	flat_flat.num <- length(which(results == "flat_flat"))
	cluster.num[j, 1] <- up_up.num
	cluster.num[j, 2] <- up_down.num
	cluster.num[j, 3] <- up_flat.num
	cluster.num[j, 4] <- flat_up.num
	cluster.num[j, 5] <- down_down.num
	cluster.num[j, 6] <- down_up.num
	cluster.num[j, 7] <- down_flat.num
	cluster.num[j, 8] <- flat_down.num
	cluster.num[j, 9] <- flat_flat.num

	cat(j, "\n")
}
save(cluster.num, file = "cluster.num.sal.leaf.10000.RData")
