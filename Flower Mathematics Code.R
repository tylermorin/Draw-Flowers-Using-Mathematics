# Set plot images to a nice size
options(repr.plot.width = 8, repr.plot.height = 8)

# Load the ggplot2 package
library(ggplot2)
# Create circle data to plot
t <- seq(0, 2*pi, length.out = 50)
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)
# Make a scatter plot of points in a circle
p <- ggplot(df, aes(x, y))
p + geom_point()
# Define the number of points
points <- 500
# Define the Golden Angle
angle <- pi*(3-sqrt(5))

t <- (1:points) * angle
x <- sin(t)
y <-cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point()
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral and remove some plot components
p <- ggplot(df, aes(x*t, y*t))
p + geom_point() +
  theme(panel.background = element_rect(fill="white"),
        axis.ticks=element_blank(), panel.grid = element_blank(), axis.title = element_blank(), axis.text = element_blank())
# Change the code from Task 4 to modify the 
# size, transparency, and color of the points
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = 8, alpha = 0.5, color = "darkgreen")
# Copy the code from Task 5 and modify the 
# color, size, and shape of the points
p <- ggplot(df, aes(x*t, y*t))
p +  geom_point(aes(size = t),shape = 8)+
  theme(legend.position = "none")
# Copy the code from Task 6 and modify the color and
# shape of the points, and the background color
p <- ggplot(df, aes(x*t, y*t))
p +   geom_point(aes(size=t), alpha=0.5, shape=17, color="yellow") +
  theme(legend.position = "none", panel.background = element_rect(fill="darkmagenta"))
# Change the value of the angle
angle <- 2.0
points <- 1000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Copy the plotting code from Task 7
p <- ggplot(df, aes(x*t, y*t))
p +   geom_point(aes(size=t), alpha=0.5, shape=17, color="yellow") +
  theme(legend.position = "none", panel.background = element_rect(fill="darkmagenta"))
# Change the values of angle and points
angle <- 13*pi/180
points <- ....

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Change the values of angle and points
angle <- 13*pi/180
points <- 5000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Adjust the plot parameters to create the magenta flower
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(alpha = 1.0, shape = 21, color = "darkgreen")+
  theme(legend.position="none",
        panel.background = element_rect(fill = "white"),
        panel.grid=element_blank(),
        axis.ticks=element_blank(),
        axis.title=element_blank(),
        axis.text=element_blank())

