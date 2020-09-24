# The input for the function is an image file
# Requires imager to obtain RGB colour channels

HSM3 <- function(x){ 
  
  library(imager)
  
  r <- R(x) * 255; g <- G(x) * 255; b <- B(x) * 255 
  
  rg <- r - g
  yb <- 0.5 * (r + g) - b
  
  m.rg <- mean(rg); m.yb <- mean(yb)
  s.rg <- sd(rg); s.yb <- sd(yb)
  
  m.rgyb <- sqrt( (m.rg^2) + (m.yb^2) )
  
  s.rgyb <- sqrt( (s.rg^2) + (s.yb^2) )
  
  h <- s.rgyb + (0.3 * m.rgyb)
  
  return(h)
  
}
