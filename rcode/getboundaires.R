# Jan-Philipp Kolb
# Mon Jun 06 19:34:16 2016

library(XML)


# node["amenity"="post_box"](50.6,7.0,50.8,7.3);
# out


place <- "Mannheim"
object <- "leisure=playground"
boundary <- "50.6,7.0,50.8,7.3"


nodes4boundaries <- function(object,boundary){
  Link1 <- "http://www.overpass-api.de/api/interpreter?data="
  InfoList <- xmlParse(paste0(Link1,"node[",object,"](",boundary,");out;"))
  return(InfoList)  
}