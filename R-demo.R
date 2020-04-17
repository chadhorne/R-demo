# Basics----

iris # Built-in data set used for example

iris <- iris # Assign iris data set to the variable "iris"

str(iris) # The iris data set is stored in a dataframe data structure

summary(iris) # Statistical summary of iris data set



iris$Sepal.Length # Each column of a dataframe is a vector

str(iris$Sepal.Length) # Vectors hold values of a single data type

numbers <- c(1, 2, 3, 4) # Create a numeric vector



for(num in numbers) {
  
  print(num)
}



my_function <- function() {
  
  print(numbers)
}



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


# Make use of the %>% (pipe) operator from the dplyr package
install.packages("dplyr")
library(dplyr)

# Example:
iris %>%
  ggplot(aes(x = Sepal.Length)) +
  geom_histogram()



# Scatter plot----

# A basic scatter plot
iris %>%
  ggplot(aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point()


# Add a regression line
iris %>%
  ggplot(aes(x = Sepal.Width, y = Sepal.Length)) +
  geom_point() +
  geom_smooth()


# Points color-coded by species
iris %>%
  ggplot(aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point()


# Seperate curves for each species
iris %>%
  ggplot(aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point() +
  geom_smooth()



# Boxplot----

# Simple boxplot
iris %>%
  ggplot(aes(Sepal.Length)) +
  geom_boxplot()


# By species
iris %>%
  ggplot(aes(Sepal.Length, color = Species)) +
  geom_boxplot()

# Add species to Y axis
iris %>%
  ggplot(aes(Sepal.Length, Species, color = Species)) +
  geom_boxplot()

# Flip coordinates for readability
iris %>%
  ggplot(aes(Sepal.Length, Species, color = Species)) +
  geom_boxplot() +
  coord_flip()
  


# Data Transformation----

install.packages("dplyr") # The dplyr package is great for transforming data

library(dplyr)


