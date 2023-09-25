
plot11 <- df_special_v2  %>% filter(Cast_Seq==1) %>%

  left_join(df_essence,by=c("logID"="log_id",
                            "fightID"="fight_id")) %>%

  filter(!is.na(Raid_Color) & Raid_Color != "NA" & Raid_Color !="Uncertain") %>% #group_by(special) %>% summarise(n=n())%>%

  ggplot() +

  geom_bar(aes(x=f_special,fill=f_special)) +

  scale_fill_manual(values=c("#333333","#000000","#FFF0C1","#FFEB99")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE))+
  facet_grid(Raid_Color~f_logNote3,scales="free_y") +
  vivax_theme()+
  theme(axis.text.x = element_markdown(size= scale_factor * 9,
                                       angle=0,hjust=0.5,vjust=0.6,
                                       margin = margin(t = 0,l=0, unit = "pt"),lineheight = 0),
        plot.caption = element_markdown(face = "italic",
                                        hjust = 0,
                                        vjust=0,
                                        size = scale_factor * 8,
                                        lineheight=0.3,
                                        margin = margin(t = 5,
                                                        l=0,
                                                        unit = "pt")),
        strip.text.x = element_text(size = scale_factor * 10)
  ) +
  guides(size="none",alpha="none",fill="none",color="none")+
  labs(y="", x="",

       title="",

       caption=c("<p><span style='font-family:forgefooter'>&#xe900;</span> &emsp; discord.gg/wp55kqmyYG - Discfordge &#91;Vivax-Pagle(US)&#93; <br> <span style='font-family:forgefooter'>&#xe901;</span> https:&#47;&#47;www&#46;github.com/ForgeGit/TwinValks</p>")) #+                                                           # Remove axis labels & ticks



ggsave(paste0("./_img/plot_11.png"),plot11,
       width = 11, height =5,units="in",device = "png",dpi=300)

plot11
