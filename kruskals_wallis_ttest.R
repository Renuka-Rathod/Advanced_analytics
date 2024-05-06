#kruskal walli H test
data("iris")
attach(iris)
kruskal.test(Petal.Length~Species,data = iris)
