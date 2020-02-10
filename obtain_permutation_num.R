#1w runs, leaf
load("cluster.num.sal.leaf.10000.RData")

length(which(cluster.num[, c("up_up")] >= 61))
length(which(cluster.num[, c("up_down")] >= 50))
length(which(cluster.num[, c("up_flat")] >= 276))
length(which(cluster.num[, c("flat_up")] >= 965))
length(which(cluster.num[, c("down_down")] >= 201))
length(which(cluster.num[, c("down_up")] >= 31))
length(which(cluster.num[, c("down_flat")] >= 494))
length(which(cluster.num[, c("flat_down")] >= 1045))

#1w runs, root
load("cluster.num.sal.root.10000.RData")
length(which(cluster.num[, c("up_up")] >= 11))
length(which(cluster.num[, c("up_down")] >= 10))
length(which(cluster.num[, c("up_flat")] >= 148))
length(which(cluster.num[, c("flat_up")] >= 231))
length(which(cluster.num[, c("down_down")] >= 18))
length(which(cluster.num[, c("down_up")] >= 5))
length(which(cluster.num[, c("down_flat")] >= 272))
length(which(cluster.num[, c("flat_down")] >= 105))
