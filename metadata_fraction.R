metadata = read.table('metadata.csv',sep=',',header = TRUE)
metadata = metadata[metadata$technology == 'multiome',]
metadata = metadata[metadata$day %in% c(2,3,4,7),]
metadata = metadata[metadata$cell_type != 'hidden',]

library('ggplot2')
library('dplyr')

metadata_stat = metadata %>% group_by(cell_type,day) %>% summarize(count = n()) %>% 
  group_by(day) %>% mutate(sum = sum(count)) %>% mutate(fraction = count/sum) %>%
  mutate(day = as.character(day))

fraction_plot = ggplot(metadata_stat, aes(fill = cell_type, y = fraction, x = day)) +
  geom_bar(position = "fill", stat = "identity")+
  theme_classic() +
  theme(axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank()) +
  geom_text(aes(label = paste0(round(fraction*100,1),'%')),size = 3, position = position_stack(vjust = 0.5))
fraction_plot
ggsave('fraction.jpg',fraction_plot)
