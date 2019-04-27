#colnames(data)[11] <- "R_SH"
#df$MD1_ANLIEF_MG <- as.numeric(sub(",", ".", sub(".", "", df$MD1_ANLIEF_MG, fixed=TRUE), fixed=TRUE))

library("ggplot2", lib.loc="~/R/R-3.5.3/library")
library(psycho)
library(tidyverse)
library(dplyr)
#---------------------------------
#Standarize data
# z_df <- df %>% 
#   psycho::standardize() 
#visualize distribution
#----------------------------------
# z_df_choose %>% 
#        dplyr::select(-input_DMC, -MD1_ANLIEF_MG, -Wuchtvers_anz, R_SH, -MD2_ANLIEF_G) %>% 
#        gather(Variable, Value) %>% 
#        ggplot(aes(x=Value, fill=Variable)) +
#        geom_density(alpha=0.4) +
#        geom_vline(aes(xintercept=0)) +
#        theme_light() +
#        scale_fill_brewer(palette="Spectral")
#----------------------------------
#normalization data
#data.frame(z_schaft) -> z_schaft
#----------------------------------------------
#unshowing boxplot
bstats <- boxplot(count ~ spray, data = data, col = "lightgray") 
#need to "waste" this plot
bstats$out <- NULL
bstats$group <- NULL
bxp(bstats)  # this will plot without any outlier points
