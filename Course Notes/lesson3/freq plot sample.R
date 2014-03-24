pf <- read.csv('pseudo_facebook.tsv', sep = '\t')
library(ggplot2)

qplot(x=friend_count, y = ..count../sum(..count..), data = subset (pf, !is.na(gender)),
       binwidth = 10, geom = 'freqpoly', color = gender) +
  scale_x_continuous(lim = c(0,1000), breaks = seq (0, 1000, 50))

