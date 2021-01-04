setwd("D:/data mining")
getwd()
dataset <- read.csv("Iris.csv", sep = ",")
head(dataset)
install.packages("C50")
install.packages("printr")
library(C50)
library(printr)
train.indices <- sample(1:nrow(iris), 100)
iris.train <- iris[train.indices, ]
iris.test <- iris[-train.indices, ]
plot(model)
model
model <- C5.0(Species ~., data=iris.train)
summary(model)
results <- predict(object=model, newdata=iris.test, type="class")
table(results, iris.test$Species)
plot(model)

