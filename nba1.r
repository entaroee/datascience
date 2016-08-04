library(dplyr)
players <- read.table("play-index_pgl_finder.cgi_stats.csv", header = TRUE, blank.lines.skip=TRUE, fill=TRUE, sep=',')
players %>% 
  filter(X3P>100) %>%
  group_by(Season) %>%
  summarize(median(PTS))