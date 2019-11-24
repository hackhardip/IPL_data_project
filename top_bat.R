deliveries %>% 
  group_by(batsman) %>% 
  summarise(total_runs = sum(batsman_runs)) %>% 
  arrange(desc(total_runs)) %>% 
  top_n(n = 10, wt = total_runs) %>% 
  ggplot(aes(x = reorder(batsman, -total_runs), y = total_runs))+
  geom_bar(aes(fill = batsman),stat = "identity")+
  labs(list(title = "Top 10 Batsman", x = "Batsman", y = "Total Runs"))+
  theme(axis.text.x=element_text(angle=75, hjust=1), plot.title = element_text(size = 8, face = "bold"),text = element_text(size=8))

