plotBC <- df_special_v2  %>% filter(Cast_Seq==1 & logNote3=="Random Logs")%>%

  left_join(df_essence,by=c("logID"="log_id",
                            "fightID"="fight_id")) %>%

  filter(!is.na(Raid_Color) & Raid_Color != "NA" & Raid_Color !="Uncertain") %>% #group_by(special) %>% summarise(n=n())%>%

  ggplot() +

  geom_bar(aes(x=f_special,fill=f_special)) +

  scale_fill_manual(values=c("#333333","#000000","#FFF0C1","#FFEB99")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE))


plotB <- plotBC +
  facet_grid(Raid_Color~f_kill,scales="free_y") +
  vivax_theme()+
  theme(axis.text.x = element_markdown(size= scale_factor * 9,
                                       angle=0,hjust=0.5,vjust=0.6,
                                       margin = margin(t = 0,l=0, unit = "pt"),lineheight = 0),
        plot.caption = element_markdown(face = "italic",
                                        hjust = 0,
                                        vjust=0,
                                        size = scale_factor * 8,
                                        lineheight=0.3,
                                        margin = margin(t = -15,
                                                        l=0,
                                                        unit = "pt")),
        strip.text.x = element_text(size = scale_factor * 10),
        axis.title.x = element_markdown(margin = margin(b = 0,
                                                        l=0,
                                                        unit = "pt"))
  ) +
  guides(size="none",alpha="none",fill="none",color="none")+
  labs(y="",x="",

       title="",

       caption=c("<p>'Log w/ wipe(s)' = Wipes and Kills for each log.</p>"))
#  caption=c("<p><span style='font-family:forgefooter'>&#xe900;</span> &emsp; discord.gg/wp55kqmyYG - Discfordge &#91;Vivax-Pagle(US)&#93; <br> <span style='font-family:forgefooter'>&#xe901;</span> https:&#47;&#47;www&#46;github.com/ForgeGit/TwinValks</p>")) #+                                                           # Remove axis labels & ticks



plotC <- plotBC +
  facet_grid(Raid_Color~logStatus,scales="free_y") +
  vivax_theme()+
  theme(axis.text.x = element_markdown(size= scale_factor * 9,
                                       angle=0,hjust=0.5,vjust=0.6,
                                       margin = margin(t = 0,l=0, unit = "pt"),lineheight = 0),
        plot.caption = element_markdown(face = "italic",
                                        hjust = 0,
                                        vjust=0,
                                        size = scale_factor * 8,
                                        lineheight=0.3,
                                        margin = margin(t = -15,
                                                        l=0,
                                                        unit = "pt")),
        strip.text.x = element_text(size = scale_factor * 10),
        axis.title.x = element_markdown(margin = margin(b = 0,
                                                        l=0,
                                                        unit = "pt"))
  ) +
  guides(size="none",alpha="none",fill="none",color="none")+
  labs(y="",x="",

       title="",

       caption=c("<p>'Log w/ wipe(s)' = Wipes and Kills for each log.</p>"))


ggsave(paste0("./_img/plot_B.png"),plotB,
       width = 2.6, height = 2.5,units="in",device = "png",dpi=300)

ggsave(paste0("./_img/plot_C.png"),plotC,
       width = 2.6, height = 2.5,units="in",device = "png",dpi=300)

