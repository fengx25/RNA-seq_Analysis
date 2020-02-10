### root
#load formatted cuffdiff results
exp.pool.root

exp.pool.root.opposite <- exp.pool.root
exp.pool.root.opposite[, 2] <- exp.pool.root [, 3]
exp.pool.root.opposite[, 3] <- exp.pool.root [, 2]
exp.pool.root.opposite[, 4] <- exp.pool.root [, 5]
exp.pool.root.opposite[, 5] <- exp.pool.root [, 4]
exp.pool.root.opposite[, 6] <- -exp.pool.root [, 6]
exp.pool.root.opposite[, 7] <- exp.pool.root [, 7]

root_0_250 <- exp.pool.root[which(exp.pool.root$sample_1 == "root0" & exp.pool.root$sample_2 == "root250"), ]
rownames(root_0_250) <- c(1:nrow(root_0_250))
root_250_0 <- exp.pool.root.opposite[which(exp.pool.root.opposite$sample_1 == "root250" & exp.pool.root.opposite$sample_2 == "root0"), ]
rownames(root_250_0) <- c(1:nrow(root_250_0))

root_0_500 <- exp.pool.root[which(exp.pool.root$sample_1 == "root0" & exp.pool.root$sample_2 == "root500"), ]
rownames(root_0_500) <- c(1:nrow(root_0_500))
root_500_0 <- exp.pool.root.opposite[which(exp.pool.root.opposite$sample_1 == "root500" & exp.pool.root.opposite$sample_2 == "root0"), ]
rownames(root_500_0) <- c(1:nrow(root_500_0))

root_250_500 <- exp.pool.root[which(exp.pool.root$sample_1 == "root250" & exp.pool.root$sample_2 == "root500"), ]
rownames(root_250_500) <- c(1:nrow(root_250_500))
root_500_250 <- exp.pool.root.opposite[which(exp.pool.root.opposite$sample_1 == "root500" & exp.pool.root.opposite$sample_2 == "root250"), ]
rownames(root_500_250) <- c(1:nrow(root_500_250))

# all patter for each gene
##root_0_250_500
root_0_250_500 <- character(27913)

up_0_250 <- which(root_0_250[, c("log2.fold_change.")] >=1 & root_0_250[, c("q_value")] < 0.05)
down_0_250 <- which(root_0_250[, c("log2.fold_change.")] <=-1 & root_0_250[, c("q_value")] < 0.05)
flat_0_250 <- setdiff(as.numeric(rownames(root_0_250)), union(up_0_250, down_0_250))

up_250_500 <- which(root_250_500[, c("log2.fold_change.")] >=1 & root_250_500[, c("q_value")] < 0.05)
down_250_500 <- which(root_250_500[, c("log2.fold_change.")] <=-1 & root_250_500[, c("q_value")] < 0.05)
flat_250_500 <- setdiff(as.numeric(rownames(root_250_500)), union(up_250_500, down_250_500))

root_0_250_500[intersect(up_0_250, up_250_500)] <- c("up_up")
root_0_250_500[intersect(up_0_250, down_250_500)] <- c("up_down")
root_0_250_500[intersect(up_0_250, flat_250_500)] <- c("up_flat")
root_0_250_500[intersect(flat_0_250, up_250_500)] <- c("flat_up")
root_0_250_500[intersect(down_0_250, down_250_500)] <- c("down_down")
root_0_250_500[intersect(down_0_250, up_250_500)] <- c("down_up")
root_0_250_500[intersect(down_0_250, flat_250_500)] <- c("down_flat")
root_0_250_500[intersect(flat_0_250, down_250_500)] <- c("flat_down")
root_0_250_500[intersect(flat_0_250, flat_250_500)] <- c("flat_flat")

##root_0_500_250
root_0_500_250 <- character(27913)

up_0_500 <- which(root_0_500[, c("log2.fold_change.")] >=1 & root_0_500[, c("q_value")] < 0.05)
down_0_500 <- which(root_0_500[, c("log2.fold_change.")] <=-1 & root_0_500[, c("q_value")] < 0.05)
flat_0_500 <- setdiff(as.numeric(rownames(root_0_500)), union(up_0_500, down_0_500)) 

up_500_250 <- which(root_500_250[, c("log2.fold_change.")] >=1 & root_500_250[, c("q_value")] < 0.05)
down_500_250 <- which(root_500_250[, c("log2.fold_change.")] <=-1 & root_500_250[, c("q_value")] < 0.05)
flat_500_250 <- setdiff(as.numeric(rownames(root_500_250)), union(up_500_250, down_500_250))

root_0_500_250[intersect(up_0_500, up_500_250)] <- c("up_up")
root_0_500_250[intersect(up_0_500, down_500_250)] <- c("up_down")
root_0_500_250[intersect(up_0_500, flat_500_250)] <- c("up_flat")
root_0_500_250[intersect(flat_0_500, up_500_250)] <- c("flat_up")
root_0_500_250[intersect(down_0_500, down_500_250)] <- c("down_down")
root_0_500_250[intersect(down_0_500, up_500_250)] <- c("down_up")
root_0_500_250[intersect(down_0_500, flat_500_250)] <- c("down_flat")
root_0_500_250[intersect(flat_0_500, down_500_250)] <- c("flat_down")
root_0_500_250[intersect(flat_0_500, flat_500_250)] <- c("flat_flat")

##root_250_0_500
root_250_0_500 <- character(27913)

up_250_0 <- which(root_250_0[, c("log2.fold_change.")] >=1 & root_250_0[, c("q_value")] < 0.05)
down_250_0 <- which(root_250_0[, c("log2.fold_change.")] <=-1 & root_250_0[, c("q_value")] < 0.05)
flat_250_0 <- setdiff(as.numeric(rownames(root_250_0)), union(up_250_0, down_250_0))

up_0_500 <- which(root_0_500[, c("log2.fold_change.")] >=1 & root_0_500[, c("q_value")] < 0.05)
down_0_500 <- which(root_0_500[, c("log2.fold_change.")] <=-1 & root_0_500[, c("q_value")] < 0.05)
flat_0_500 <- setdiff(as.numeric(rownames(root_0_500)), union(up_0_500, down_0_500))

root_250_0_500[intersect(up_250_0, up_0_500)] <- c("up_up")
root_250_0_500[intersect(up_250_0, down_0_500)] <- c("up_down")
root_250_0_500[intersect(up_250_0, flat_0_500)] <- c("up_flat")
root_250_0_500[intersect(flat_250_0, up_0_500)] <- c("flat_up")
root_250_0_500[intersect(down_250_0, down_0_500)] <- c("down_down")
root_250_0_500[intersect(down_250_0, up_0_500)] <- c("down_up")
root_250_0_500[intersect(down_250_0, flat_0_500)] <- c("down_flat")
root_250_0_500[intersect(flat_250_0, down_0_500)] <- c("flat_down")
root_250_0_500[intersect(flat_250_0, flat_0_500)] <- c("flat_flat")

##root_250_500_0
root_250_500_0 <- character(27913)

up_250_500 <- which(root_250_500[, c("log2.fold_change.")] >=1 & root_250_500[, c("q_value")] < 0.05)
down_250_500 <- which(root_250_500[, c("log2.fold_change.")] <=-1 & root_250_500[, c("q_value")] < 0.05)
flat_250_500 <- setdiff(as.numeric(rownames(root_250_500)), union(up_250_500, down_250_500))

up_500_0 <- which(root_500_0[, c("log2.fold_change.")] >=1 & root_500_0[, c("q_value")] < 0.05)
down_500_0 <- which(root_500_0[, c("log2.fold_change.")] <=-1 & root_500_0[, c("q_value")] < 0.05)
flat_500_0 <- setdiff(as.numeric(rownames(root_500_0)), union(up_500_0, down_500_0))

root_250_500_0[intersect(up_250_500, up_500_0)] <- c("up_up")
root_250_500_0[intersect(up_250_500, down_500_0)] <- c("up_down")
root_250_500_0[intersect(up_250_500, flat_500_0)] <- c("up_flat")
root_250_500_0[intersect(flat_250_500, up_500_0)] <- c("flat_up")
root_250_500_0[intersect(down_250_500, down_500_0)] <- c("down_down")
root_250_500_0[intersect(down_250_500, up_500_0)] <- c("down_up")
root_250_500_0[intersect(down_250_500, flat_500_0)] <- c("down_flat")
root_250_500_0[intersect(flat_250_500, down_500_0)] <- c("flat_down")
root_250_500_0[intersect(flat_250_500, flat_500_0)] <- c("flat_flat")

##root_500_0_250
root_500_0_250 <- character(27913)

up_500_0 <- which(root_500_0[, c("log2.fold_change.")] >=1 & root_500_0[, c("q_value")] < 0.05)
down_500_0 <- which(root_500_0[, c("log2.fold_change.")] <=-1 & root_500_0[, c("q_value")] < 0.05)
flat_500_0 <- setdiff(as.numeric(rownames(root_500_0)), union(up_500_0, down_500_0))

up_0_250 <- which(root_0_250[, c("log2.fold_change.")] >=1 & root_0_250[, c("q_value")] < 0.05)
down_0_250 <- which(root_0_250[, c("log2.fold_change.")] <=-1 & root_0_250[, c("q_value")] < 0.05)
flat_0_250 <- setdiff(as.numeric(rownames(root_0_250)), union(up_0_250, down_0_250))

root_500_0_250[intersect(up_500_0, up_0_250)] <- c("up_up")
root_500_0_250[intersect(up_500_0, down_0_250)] <- c("up_down")
root_500_0_250[intersect(up_500_0, flat_0_250)] <- c("up_flat")
root_500_0_250[intersect(flat_500_0, up_0_250)] <- c("flat_up")
root_500_0_250[intersect(down_500_0, down_0_250)] <- c("down_down")
root_500_0_250[intersect(down_500_0, up_0_250)] <- c("down_up")
root_500_0_250[intersect(down_500_0, flat_0_250)] <- c("down_flat")
root_500_0_250[intersect(flat_500_0, down_0_250)] <- c("flat_down")
root_500_0_250[intersect(flat_500_0, flat_0_250)] <- c("flat_flat")

##root_500_250_0
root_500_250_0 <- character(27913)

up_500_250 <- which(root_500_250[, c("log2.fold_change.")] >=1 & root_500_250[, c("q_value")] < 0.05)
down_500_250 <- which(root_500_250[, c("log2.fold_change.")] <=-1 & root_500_250[, c("q_value")] < 0.05)
flat_500_250 <- setdiff(as.numeric(rownames(root_500_250)), union(up_500_250, down_500_250))

up_250_0 <- which(root_250_0[, c("log2.fold_change.")] >=1 & root_250_0[, c("q_value")] < 0.05)
down_250_0 <- which(root_250_0[, c("log2.fold_change.")] <=-1 & root_250_0[, c("q_value")] < 0.05)
flat_250_0 <- setdiff(as.numeric(rownames(root_250_0)), union(up_250_0, down_250_0))

root_500_250_0[intersect(up_500_250, up_250_0)] <- c("up_up")
root_500_250_0[intersect(up_500_250, down_250_0)] <- c("up_down")
root_500_250_0[intersect(up_500_250, flat_250_0)] <- c("up_flat")
root_500_250_0[intersect(flat_500_250, up_250_0)] <- c("flat_up")
root_500_250_0[intersect(down_500_250, down_250_0)] <- c("down_down")
root_500_250_0[intersect(down_500_250, up_250_0)] <- c("down_up")
root_500_250_0[intersect(down_500_250, flat_250_0)] <- c("down_flat")
root_500_250_0[intersect(flat_500_250, down_250_0)] <- c("flat_down")
root_500_250_0[intersect(flat_500_250, flat_250_0)] <- c("flat_flat")

pattern <- data.frame(array(0,c(nrow(root_0_250), 7)))

pattern[, 1] <- root_0_250[, c("gene")]
pattern[, 2] <- root_0_250_500
pattern[, 3] <- root_0_500_250
pattern[, 4] <- root_250_0_500
pattern[, 5] <- root_250_500_0
pattern[, 6] <- root_500_0_250
pattern[, 7] <- root_500_250_0
colnames(pattern) <- c("gene", "root_0_250_500", "root_0_500_250", "root_250_0_500", "root_250_500_0", "root_500_0_250", "root_500_250_0")

save(pattern, file = "expression.pattern.root.sal.RData")

