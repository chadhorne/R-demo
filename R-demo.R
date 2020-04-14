# Basics----

iris # Built-in data set used for example

iris <- iris # Assign iris data set to the variable "iris"

str(iris) # The iris data set is stored in a dataframe data structure

iris$Sepal.Length # Each column of a dataframe is a vector

str(iris$Sepal.Length) # Vectors hold values of a single data type

summary(iris) # Statistical summary of iris data set



# Data visualization----

install.packages("ggplot2") # Install ggplot2 package (only need to do this once)

library(ggplot2) # Add the package to your active library (only active for the current R session)

# A basic histogram
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_histogram()

# Color-code by species
ggplot(data = iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram()

# Unstack bars by species
ggplot(data = iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(position = "dodge")

# A basic scatter plot
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point()

# Add a regression line
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point() +
  geom_smooth()

# Points color-coded by species
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point()

# Seperate curves for each species
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point() +
  geom_smooth()



# Data Transformation----

install.packages("dplyr") # The dplyr package is great for transforming data

library(dplyr)


