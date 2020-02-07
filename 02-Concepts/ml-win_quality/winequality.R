##############################################################################
# Clean environment
##############################################################################
rm(list=ls())
set.seed(2510)


##############################################################################
# Imports
##############################################################################
library(readr)
library(caret)
library(party)
library(ggplot2)
library(corrplot)
library(doParallel)
library(randomForest)
library(AppliedPredictiveModeling)


###############################################################################
# Parallel processing
###############################################################################
cl <- makeCluster(detectCores(), type='PSOCK')
registerDoParallel(cl)


###############################################################################
# Load data
###############################################################################
setwd("C:/work/programming/R/ml-winw_quality")
trainingFile <- read.csv("winequality-white.csv", sep = ";", na.strings = c("NA", ""))
View(trainingFile)


###############################################################################
# Exploratory data analysis
###############################################################################
dim(trainingFile)
str(trainingFile)
summary(trainingFile)
range(trainingFile$quality)
any(is.na(trainingFile))
table(trainingFile$quality)
head(trainingFile[,1:4])


hist(trainingFile$quality)
hist(trainingFile$pH)
par(mfrow=c(2,2))
plot(trainingFile$quality,trainingFile$alcohol, main="Quality cs Alcohol")
plot(trainingFile$quality,trainingFile$pH, main="Quality vs PH")
plot(trainingFile$citric.acid,trainingFile$residual.sugar, main="Citric Acid vs Residual Sugar")
plot(trainingFile$chlorides,trainingFile$density, main="Chlorides vs Density")

ggplot(trainingFile, aes(x = quality)) +
	geom_histogram(aes(fill = ..count..), binwidth = 0.5) +
    ggtitle("Histogram of Quality") +
	scale_fill_gradient("Count", low = "blue", high = "red")

ggplot(trainingFile, aes(x=quality, y=pH, color=quality)) + 
	geom_violin(trim=FALSE, fill ="skyblue3") +
	ggtitle("Violinplot quality vs PH") +
	stat_summary(fun.y=mean, geom="point", shape=1, size=1, color="chocolate4")

	
###############################################################################
# Data tpye convertions
###############################################################################
trainingFile$quality <- make.names(trainingFile$quality)
trainingFile$quality <- as.factor(trainingFile$quality)
str(trainingFile$quality)


###############################################################################
# Variance
###############################################################################
nzv <- nearZeroVar(trainingFile,  saveMetrics = TRUE, allowParallel = TRUE)
nzv


###############################################################################
# Correlation
# NOTE: http://www.sthda.com/english/wiki/correlation-matrix-a-quick-start-guide-to-analyze-format-and-visualize-a-correlation-matrix-using-r-software
###############################################################################
correlated <- cor(trainingFile[,-12])
correlated
corrplot(correlated, type = "upper", order = "hclust", tl.col = "black", tl.srt = 45)

highCorr <- sum(abs(correlated[upper.tri(correlated)]) > 0.9)
highCorr

col<- colorRampPalette(c("blue", "white", "red"))(20)
heatmap(x = correlated, col = col, symm = TRUE)


###############################################################################
# Create datasets fro validation and training
###############################################################################
dataPartititon <- createDataPartition(trainingFile$quality, p = 0.75, list = FALSE)
trainingSet    <- trainingFile[dataPartititon, ]
validationSet  <- trainingFile[-dataPartititon, ]


# remove column density and quality
trainingSet <- trainingSet[, -c(1:2)]
trainingSet


###############################################################################
# Caret with random forest
###############################################################################
fitControl <- trainControl(method = "repeatedcv", repeats = 5, classProbs = TRUE)

grid <- expand.grid(.interaction.depth = seq(1, 10, by = 1),
                    .n.trees = seq(100, 2000, by = 50),
                    .shrinkage = c(0.01, 0.1))

head(trainingSet)

# Data is center and scale and model runs .....
Sys.time()
model_RandomForest <- train(quality ~ ., data = trainingSet, method = "rf", preProc = c("center", "scale"), verbose = FALSE, trControl = fitControl)


Sys.time()


model_RandomForest
plot(model_RandomForest)
varImpPlot(model_RandomForest$finalModel)

dim(validationSet)
predict_RandomForest <- predict(model_RandomForest, validationSet)

confusionMatrix(predict_RandomForest, validationSet$quality)


##

plot(model_RandomForest$finalModel)
tree <- getTree(model_RandomForest$finalModel,k = 1)
plot(tree)



