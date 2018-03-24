#data from (http://adn.biol.umontreal.ca/~numericalecology/data/scotch.html)
library(data.table)
library(tidyverse)

scotch <- fread("https://s3-ap-southeast-2.amazonaws.com/koki25ando/scotch.csv", data.table = FALSE)
names(scotch) <- scotch2[2,]
scotch.score <- scotch[-1,]
scotch.score <- scoscotch.scoretch[-1,]
scotch.score <- scotch.score[,-2]
names(scotch.score)[73] <- "Alcohol"

scotch.score <- 
  scotch.score %>% 
  gather(key = review.point, value = score, -NAME, -REGION, -DISTRICT)
scotch.score$score <- as.numeric(scotch.score$score)

tidy.scotch.score <- scotch.score

write.csv(tidy.scotch.score, "scotch_score.csv", row.names=TRUE, quote=TRUE)
