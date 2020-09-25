#' HSM3
#' 
#' Calculates the Hasler and Süsstrunck (2003) M3 colourfulness metric 
#' 
#' Uses imager \url{http://dahtah.github.io/imager/}
#'
#' @param x An image file
#' 
#' @example
#' \url{https://github.com/DrNickRedfern/HSM3/blob/master/README.md}
#'
#' @author Nick Redfern \email{nickredfernres@outlook.com}
#'
#' @references
#' Hasler, D. and Süsstrunk, S. E. (2003) Measuring colorfulness in natural images, 
#' Proc. IS&T/SPIE Electronic Imaging 2003: Human Vision and Electronic Imaging VIII (17 June 2003) 5007: 87-95.
#' \url{https://doi.org/10.1117/12.477378}

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
