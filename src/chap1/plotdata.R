#author tongming@outlook.com

#plot the prostate data
prostate <- read.table("../../data/prostate.data", row.names=1, header=TRUE)
prostate.train <- prostate[which(prostate$train == TRUE), c(-ncol(prostate))]
plot(prostate.train, col="green")

#plot microarray data
microarray <- read.table("../../data/microarray/14cancer.xtrain", header=F)
micro.sample <- microarray[sample(nrow(microarray), 100), ]
micro.sample.mat <- data.matrix(micro.sample)
heatmap(micro.sample.mat, RowV=NA, ColV=NA)

