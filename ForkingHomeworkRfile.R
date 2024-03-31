library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)

diamonds <- as.data.table(diamonds)
diamonds <- diamonds[, c("carat", "cut", "price")]
diamonds <- diamonds[cut == "Premium" & price > 7000 & price < 10000]
diamonds <- diamonds[order(-carat)]
diamonds <- diamonds[1:20]
diamonds
