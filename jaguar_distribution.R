onca<-read.csv("jaguar_distribution.csv")
onca$distr <- as.factor(onca$distr)
x <- onca$lat
y <- onca$lon
z <- onca$alt
colors <- c("darkolivegreen","darkolivegreen1")
colors <- colors[as.numeric(onca$distr)]
shapes = c(1, 2) 
shapes <- shapes[as.numeric(onca$distr)]

library(rgl)

plot3d(x,y,z, labels = F, xlab="lat", ylab="lon", zlab="elev",
col = colors, pch = shapes)
legend3d("topright", col=c("darkolivegreen1","darkolivegreen"), legend = c("Historic", "Current"), pch=16, cex=1)

# Save like gif
movie3d(
  movie="jaguar_distribution", 
  spin3d( axis = c(0, 0, 1), rpm = 15),
  duration = 20, 
  dir = "D:/Francesca/Documents/R/ChartChallenge_Day7",
  type = "gif", 
  clean = TRUE
)

