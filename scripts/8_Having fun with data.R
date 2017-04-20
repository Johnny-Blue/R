library(datasets)
data(iris)
str(iris)
head(iris)
View(iris)

mean(iris$Sepal.Length)

median(iris$Sepal.Length)

range(iris$Sepal.Length)
diff(range(iris$Sepal.Length))

summary(iris$Sepal.Length)
summary(iris)

boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length, horizontal = TRUE)
boxplot.stats(iris$Sepal.Length)
boxplot(iris[1:4])

hist(iris$Sepal.Length)
hist(iris$Sepal.Length,
     main="Histogram of sepal length",
     xlab="Sepal length")

var(iris$Sepal.Length)
sd(iris$Sepal.Length)

table(iris$Species)
barplot(table(iris$Species))
prop.table(table(iris$Species))
prop.table(table(iris$Species))*100

install.packages("psych")
library(psych)
describeBy(iris,group = iris$Species)
library(lattice)
histogram(~Sepal.Length|Species,
          data=iris,
          layout=c(1,3),
          col="black")
boxplot(Sepal.Length~Species,
        data = iris)
