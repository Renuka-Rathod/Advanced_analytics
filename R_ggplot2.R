data =iris
library(ggplot2)
ggplot(data, aes(1:150, Sepal.Length)) + geom_line()
ggplot(data, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()
ggplot(data, aes(x = Species, y = Sepal.Length)) +
  geom_col()
ggplot(data, aes(x = Sepal.Length)) +
  geom_bar()
ggplot(data, aes(Sepal.Length)) +
  geom_histogram(bins = 15)
ggplot(data, aes(Sepal.Length)) +
  geom_histogram(bins = 5)
ggplot(data, aes(Sepal.Length)) +
  geom_density()
ggplot(data, aes(x = Sepal.Length)) + 
  geom_boxplot()
ggplot(data, aes(x = Species, y = Sepal.Length)) +
  geom_violin()
ggplot(data, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() + labs(x='x axis label', y='y axis label',
                      title='title', subtitle='subtitle',
                      caption='image using ggplot2')

IrisPlot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point()
print(IrisPlot)
print(IrisPlot + labs(y="Petal length (cm)", x = "Sepal length (cm)") 
      + ggtitle("Petal and sepal length of iris"))

# Assign basic graph to a variable
graph1 = ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point() 
# Remove Legend
graph1 + theme(legend.position="none")

# Hide the legend title
graph1 + theme(legend.title=element_blank())

#Change the legend position
graph1 + theme(legend.position="top")

graph1 + theme(legend.position="bottom")
