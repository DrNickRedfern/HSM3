#' HSM3
#' 
#' Calculates the Hasler and Süsstrunck M3 colourfulness metric \url{https://doi.org/10.1117/12.477378}
#' 
#' @param x an image file
#' @return numeric
#' @author Nick Redfern \email{nickredfernres@outlook.com}

HSM3 <- function(x){ 
  
  library(imager)
  
  r <- R(x) * 255; g <- G(x) * 255; b <- B(x) * 255 
  
  rg <- r - g
  yb <- 0.5 * (r + g) - b
  
  mean_rg <- mean(rg); meam_yb <- mean(yb)
  sd_rg <- sd(rg); s_yb <- sd(yb)
  
  mean_rgyb <- sqrt( (mean_rg^2) + (m_yb^2) )
  
  s_rgyb <- sqrt( (s_rg^2) + (s_yb^2) )
  
  return(s_rgyb + (0.3 * m_rgyb)
  
}
