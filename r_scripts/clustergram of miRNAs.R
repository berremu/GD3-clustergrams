install.packages("tidyverse")
install.packages("pheatmap")
install.packages("dplyr")
install.packages("readxl")

library(tidyverse)
library(pheatmap)
library(dplyr)
library(readxl)

getwd()
df <- read_excel("miRNAs.xlsx")

pivot_df <- df %>%
  group_by(target, gene) %>%
  summarise(count = n()) %>%
  spread(key = gene, value = count, fill = 0)

pheatmap(as.matrix(pivot_df[,-1]), 
         cluster_rows = TRUE,       
         cluster_cols = TRUE,       
         display_numbers = FALSE,   
         color = colorRampPalette(c("#D0EFFF", "#A6C8FF", "#5D9BC7", "#478C9D", "#346A73", "#2A4A59"))(50), # Pastel mavi, mor ve ye??il tonlar??
         main = "miRNAS and Biomarkers",
         fontsize = 12,             
         fontsize_row = 8,          
         fontsize_col = 8,          
         angle_col = 45,            
         border_color = NA,         
         show_rownames = TRUE,      
         show_colnames = TRUE,      
         treeheight_row = 50,       
         treeheight_col = 50,       
         legend = TRUE,             
         legend_breaks = seq(0, 1, by = 0.2), 
         legend_labels = c("0", "0.2", "0.4", "0.6", "0.8", "1"))








