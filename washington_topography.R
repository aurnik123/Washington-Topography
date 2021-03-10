# To install the latest version from Github:
install.packages("devtools")
devtools::install_github("tylermorganwall/rayshader")

library(rayshader)

#Here, I load a map with the raster package.
localtif = raster::raster("TIF_data\\USGS_13_n46w117.tif")

#And convert it to a matrix:
elmat = raster_to_matrix(localtif)

#We use another one of rayshader's built-in textures:
elmat %>%
  sphere_shade(texture = "desert") %>%
  plot_map()