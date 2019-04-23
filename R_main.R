#colnames(data)[11] <- "R_SH"
#
library("ggplot2", lib.loc="~/R/R-3.5.3/library")
library(psycho)
library(tidyverse)
#visualize distribution
z_df_choose %>% 
  +     dplyr::select(-input_DMC, -MD1_ANLIEF_MG, -Wuchtvers_anz, R_SH, -MD2_ANLIEF_G) %>% 
  +     gather(Variable, Value) %>% 
  +     ggplot(aes(x=Value, fill=Variable)) +
  +     geom_density(alpha=0.4) +
  +     geom_vline(aes(xintercept=0)) +
  +     theme_light() +
  +     scale_fill_brewer(palette="Spectral")