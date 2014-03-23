pf <- read.csv('pseudo_facebook.tsv', sep = '\t')
library(ggplot2)

qplot(x=www_likes,data = subset (pf, !is.na(gender)),
       binwidth = 10, geom = 'freqpoly', color = gender) +
  scale_x_continuous()

