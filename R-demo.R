# Basics----

iris # Built-in data set used for example

iris <- iris # Assign iris data set to the variable "iris"

str(iris) # The iris data set is stored in a dataframe data structure

summary(iris) # Statistical summary of iris data set



# Data visualization----

install.packages("ggplot2") # Install ggplot2 package (only need to do this once)

library(ggplot2) # Add the package to your active library (only active for the current R session)

ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point()
