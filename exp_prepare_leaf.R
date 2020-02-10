### leaf
#load formatted cuffdiff output
exp.pool.leaf

exp.pool.leaf.opposite <- exp.pool.leaf
exp.pool.leaf.opposite[, 2] <- exp.pool.leaf [, 3]
exp.pool.leaf.opposite[, 3] <- exp.pool.leaf [, 2]
exp.pool.leaf.opposite[, 4] <- exp.pool.leaf [, 5]
exp.pool.leaf.opposite[, 5] <- exp.pool.leaf [, 4]
exp.pool.leaf.opposite[, 6] <- -exp.pool.leaf [, 6]
exp.pool.leaf.opposite[, 7] <- exp.pool.leaf [, 7]

leaf_0_250 <- exp.pool.leaf[which(exp.pool.leaf$sample_1 == "leaf0" & exp.pool.leaf$sample_2 == "leaf250"), ]
rownames(leaf_0_250) <- c(1:nrow(leaf_0_250))
leaf_250_0 <- exp.pool.leaf.opposite[which(exp.pool.leaf.opposite$sample_1 == "leaf250" & exp.pool.leaf.opposite$sample_2 == "leaf0"), ]
rownames(leaf_250_0) <- c(1:nrow(leaf_250_0))

leaf_0_500 <- exp.pool.leaf[which(exp.pool.leaf$sample_1 == "leaf0" & exp.pool.leaf$sample_2 == "leaf500"), ]
rownames(leaf_0_500) <- c(1:nrow(leaf_0_500))
leaf_500_0 <- exp.pool.leaf.opposite[which(exp.pool.leaf.opposite$sample_1 == "leaf500" & exp.pool.leaf.opposite$sample_2 == "leaf0"), ]
rownames(leaf_500_0) <- c(1:nrow(leaf_500_0))

leaf_250_500 <- exp.pool.leaf[which(exp.pool.leaf$sample_1 == "leaf250" & exp.pool.leaf$sample_2 == "leaf500"), ]
rownames(leaf_250_500) <- c(1:nrow(leaf_250_500))
leaf_500_250 <- exp.pool.leaf.opposite[which(exp.pool.leaf.opposite$sample_1 == "leaf500" & exp.pool.leaf.opposite$sample_2 == "leaf250"), ]
rownames(leaf_500_250) <- c(1:nrow(leaf_500_250))

# all patter for each gene
##leaf_0_250_500
leaf_0_250_500 <- character(27913)

up_0_250 <- which(leaf_0_250[, c("log2.fold_change.")] >=1 & leaf_0_250[, c("q_value")] < 0.05)
down_0_250 <- which(leaf_0_250[, c("log2.fold_change.")] <=-1 & leaf_0_250[, c("q_value")] < 0.05)
flat_0_250 <- setdiff(as.numeric(rownames(leaf_0_250)), union(up_0_250, down_0_250))

up_250_500 <- which(leaf_250_500[, c("log2.fold_change.")] >=1 & leaf_250_500[, c("q_value")] < 0.05)
down_250_500 <- which(leaf_250_500[, c("log2.fold_change.")] <=-1 & leaf_250_500[, c("q_value")] < 0.05)
flat_250_500 <- setdiff(as.numeric(rownames(leaf_250_500)), union(up_250_500, down_250_500))

leaf_0_250_500[intersect(up_0_250, up_250_500)] <- c("up_up")
leaf_0_250_500[intersect(up_0_250, down_250_500)] <- c("up_down")
leaf_0_250_500[intersect(up_0_250, flat_250_500)] <- c("up_flat")
leaf_0_250_500[intersect(flat_0_250, up_250_500)] <- c("flat_up")
leaf_0_250_500[intersect(down_0_250, down_250_500)] <- c("down_down")
leaf_0_250_500[intersect(down_0_250, up_250_500)] <- c("down_up")
leaf_0_250_500[intersect(down_0_250, flat_250_500)] <- c("down_flat")
leaf_0_250_500[intersect(flat_0_250, down_250_500)] <- c("flat_down")
leaf_0_250_500[intersect(flat_0_250, flat_250_500)] <- c("flat_flat")

##leaf_0_500_250
leaf_0_500_250 <- character(27913)

up_0_500 <- which(leaf_0_500[, c("log2.fold_change.")] >=1 & leaf_0_500[, c("q_value")] < 0.05)
down_0_500 <- which(leaf_0_500[, c("log2.fold_change.")] <=-1 & leaf_0_500[, c("q_value")] < 0.05)
flat_0_500 <- setdiff(as.numeric(rownames(leaf_0_500)), union(up_0_500, down_0_500)) 

up_500_250 <- which(leaf_500_250[, c("log2.fold_change.")] >=1 & leaf_500_250[, c("q_value")] < 0.05)
down_500_250 <- which(leaf_500_250[, c("log2.fold_change.")] <=-1 & leaf_500_250[, c("q_value")] < 0.05)
flat_500_250 <- setdiff(as.numeric(rownames(leaf_500_250)), union(up_500_250, down_500_250))

leaf_0_500_250[intersect(up_0_500, up_500_250)] <- c("up_up")
leaf_0_500_250[intersect(up_0_500, down_500_250)] <- c("up_down")
leaf_0_500_250[intersect(up_0_500, flat_500_250)] <- c("up_flat")
leaf_0_500_250[intersect(flat_0_500, up_500_250)] <- c("flat_up")
leaf_0_500_250[intersect(down_0_500, down_500_250)] <- c("down_down")
leaf_0_500_250[intersect(down_0_500, up_500_250)] <- c("down_up")
leaf_0_500_250[intersect(down_0_500, flat_500_250)] <- c("down_flat")
leaf_0_500_250[intersect(flat_0_500, down_500_250)] <- c("flat_down")
leaf_0_500_250[intersect(flat_0_500, flat_500_250)] <- c("flat_flat")

##leaf_250_0_500
leaf_250_0_500 <- character(27913)

up_250_0 <- which(leaf_250_0[, c("log2.fold_change.")] >=1 & leaf_250_0[, c("q_value")] < 0.05)
down_250_0 <- which(leaf_250_0[, c("log2.fold_change.")] <=-1 & leaf_250_0[, c("q_value")] < 0.05)
flat_250_0 <- setdiff(as.numeric(rownames(leaf_250_0)), union(up_250_0, down_250_0))

up_0_500 <- which(leaf_0_500[, c("log2.fold_change.")] >=1 & leaf_0_500[, c("q_value")] < 0.05)
down_0_500 <- which(leaf_0_500[, c("log2.fold_change.")] <=-1 & leaf_0_500[, c("q_value")] < 0.05)
flat_0_500 <- setdiff(as.numeric(rownames(leaf_0_500)), union(up_0_500, down_0_500))

leaf_250_0_500[intersect(up_250_0, up_0_500)] <- c("up_up")
leaf_250_0_500[intersect(up_250_0, down_0_500)] <- c("up_down")
leaf_250_0_500[intersect(up_250_0, flat_0_500)] <- c("up_flat")
leaf_250_0_500[intersect(flat_250_0, up_0_500)] <- c("flat_up")
leaf_250_0_500[intersect(down_250_0, down_0_500)] <- c("down_down")
leaf_250_0_500[intersect(down_250_0, up_0_500)] <- c("down_up")
leaf_250_0_500[intersect(down_250_0, flat_0_500)] <- c("down_flat")
leaf_250_0_500[intersect(flat_250_0, down_0_500)] <- c("flat_down")
leaf_250_0_500[intersect(flat_250_0, flat_0_500)] <- c("flat_flat")

##leaf_250_500_0
leaf_250_500_0 <- character(27913)

up_250_500 <- which(leaf_250_500[, c("log2.fold_change.")] >=1 & leaf_250_500[, c("q_value")] < 0.05)
down_250_500 <- which(leaf_250_500[, c("log2.fold_change.")] <=-1 & leaf_250_500[, c("q_value")] < 0.05)
flat_250_500 <- setdiff(as.numeric(rownames(leaf_250_500)), union(up_250_500, down_250_500))

up_500_0 <- which(leaf_500_0[, c("log2.fold_change.")] >=1 & leaf_500_0[, c("q_value")] < 0.05)
down_500_0 <- which(leaf_500_0[, c("log2.fold_change.")] <=-1 & leaf_500_0[, c("q_value")] < 0.05)
flat_500_0 <- setdiff(as.numeric(rownames(leaf_500_0)), union(up_500_0, down_500_0))

leaf_250_500_0[intersect(up_250_500, up_500_0)] <- c("up_up")
leaf_250_500_0[intersect(up_250_500, down_500_0)] <- c("up_down")
leaf_250_500_0[intersect(up_250_500, flat_500_0)] <- c("up_flat")
leaf_250_500_0[intersect(flat_250_500, up_500_0)] <- c("flat_up")
leaf_250_500_0[intersect(down_250_500, down_500_0)] <- c("down_down")
leaf_250_500_0[intersect(down_250_500, up_500_0)] <- c("down_up")
leaf_250_500_0[intersect(down_250_500, flat_500_0)] <- c("down_flat")
leaf_250_500_0[intersect(flat_250_500, down_500_0)] <- c("flat_down")
leaf_250_500_0[intersect(flat_250_500, flat_500_0)] <- c("flat_flat")

##leaf_500_0_250
leaf_500_0_250 <- character(27913)

up_500_0 <- which(leaf_500_0[, c("log2.fold_change.")] >=1 & leaf_500_0[, c("q_value")] < 0.05)
down_500_0 <- which(leaf_500_0[, c("log2.fold_change.")] <=-1 & leaf_500_0[, c("q_value")] < 0.05)
flat_500_0 <- setdiff(as.numeric(rownames(leaf_500_0)), union(up_500_0, down_500_0))

up_0_250 <- which(leaf_0_250[, c("log2.fold_change.")] >=1 & leaf_0_250[, c("q_value")] < 0.05)
down_0_250 <- which(leaf_0_250[, c("log2.fold_change.")] <=-1 & leaf_0_250[, c("q_value")] < 0.05)
flat_0_250 <- setdiff(as.numeric(rownames(leaf_0_250)), union(up_0_250, down_0_250))

leaf_500_0_250[intersect(up_500_0, up_0_250)] <- c("up_up")
leaf_500_0_250[intersect(up_500_0, down_0_250)] <- c("up_down")
leaf_500_0_250[intersect(up_500_0, flat_0_250)] <- c("up_flat")
leaf_500_0_250[intersect(flat_500_0, up_0_250)] <- c("flat_up")
leaf_500_0_250[intersect(down_500_0, down_0_250)] <- c("down_down")
leaf_500_0_250[intersect(down_500_0, up_0_250)] <- c("down_up")
leaf_500_0_250[intersect(down_500_0, flat_0_250)] <- c("down_flat")
leaf_500_0_250[intersect(flat_500_0, down_0_250)] <- c("flat_down")
leaf_500_0_250[intersect(flat_500_0, flat_0_250)] <- c("flat_flat")

##leaf_500_250_0
leaf_500_250_0 <- character(27913)

up_500_250 <- which(leaf_500_250[, c("log2.fold_change.")] >=1 & leaf_500_250[, c("q_value")] < 0.05)
down_500_250 <- which(leaf_500_250[, c("log2.fold_change.")] <=-1 & leaf_500_250[, c("q_value")] < 0.05)
flat_500_250 <- setdiff(as.numeric(rownames(leaf_500_250)), union(up_500_250, down_500_250))

up_250_0 <- which(leaf_250_0[, c("log2.fold_change.")] >=1 & leaf_250_0[, c("q_value")] < 0.05)
down_250_0 <- which(leaf_250_0[, c("log2.fold_change.")] <=-1 & leaf_250_0[, c("q_value")] < 0.05)
flat_250_0 <- setdiff(as.numeric(rownames(leaf_250_0)), union(up_250_0, down_250_0))

leaf_500_250_0[intersect(up_500_250, up_250_0)] <- c("up_up")
leaf_500_250_0[intersect(up_500_250, down_250_0)] <- c("up_down")
leaf_500_250_0[intersect(up_500_250, flat_250_0)] <- c("up_flat")
leaf_500_250_0[intersect(flat_500_250, up_250_0)] <- c("flat_up")
leaf_500_250_0[intersect(down_500_250, down_250_0)] <- c("down_down")
leaf_500_250_0[intersect(down_500_250, up_250_0)] <- c("down_up")
leaf_500_250_0[intersect(down_500_250, flat_250_0)] <- c("down_flat")
leaf_500_250_0[intersect(flat_500_250, down_250_0)] <- c("flat_down")
leaf_500_250_0[intersect(flat_500_250, flat_250_0)] <- c("flat_flat")

pattern <- data.frame(array(0,c(nrow(leaf_0_250), 7)))

pattern[, 1] <- leaf_0_250[, c("gene")]
pattern[, 2] <- leaf_0_250_500
pattern[, 3] <- leaf_0_500_250
pattern[, 4] <- leaf_250_0_500
pattern[, 5] <- leaf_250_500_0
pattern[, 6] <- leaf_500_0_250
pattern[, 7] <- leaf_500_250_0
colnames(pattern) <- c("gene", "leaf_0_250_500", "leaf_0_500_250", "leaf_250_0_500", "leaf_250_500_0", "leaf_500_0_250", "leaf_500_250_0")

save(pattern, file = "expression.pattern.leaf.sal.RData")
