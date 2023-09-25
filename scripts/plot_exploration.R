
df_special_v2%>%

     left_join(df_essence,by=c("logID"="log_id",
                               "fightID"="fight_id")) %>%

       filter(!is.na(Raid_Color) & Raid_Color != "NA")  %>%

      filter((logNote3=="Speed" | logNote3=="Exec. & Speed") & kill==1 & Cast_Seq==1) %>%
  arrange(duration_s) %>% mutate(rank_speed = row_number()) %>% filter(rank_speed<100) %>%

  group_by(Raid_Color,logStatus) %>%
  summarise(n=n(),duration = mean(duration_s))



df_special_v2%>%

  left_join(df_essence,by=c("logID"="log_id",
                            "fightID"="fight_id")) %>%

  filter(!is.na(Raid_Color) & Raid_Color != "NA")  %>%

  filter((logNote3=="Speed" | logNote3=="Exec. & Speed")& Cast_Seq==1) %>% filter((kill==1 & logStatus=="One-shot") | (kill==0 & logStatus=="Log w/ wipe(s)") ) %>%

  ggplot() +

  geom_bar(aes(x=f_special,fill=f_special)) +

  scale_fill_manual(values=c("#333333","#000000","#FFF0C1","#FFEB99")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE)) +
  facet_wrap(.~Raid_Color,scales="free_y") +
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



df_special_v2%>%

  left_join(df_essence,by=c("logID"="log_id",
                            "fightID"="fight_id")) %>%

  filter(!is.na(Raid_Color) & Raid_Color != "NA")%>%
  arrange(duration_s) %>% mutate(rank_speed = row_number()) %>% filter(rank_speed<250)  %>%

  filter((logNote3=="Speed" | logNote3=="Exec. & Speed")& Cast_Seq==1) %>% filter((kill==0 & logStatus=="Log w/ wipe(s)") ) %>%

  ggplot() +

  geom_bar(aes(x=f_special,fill=f_special)) +

  scale_fill_manual(values=c("#333333","#000000","#FFF0C1","#FFEB99")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE)) +
  facet_wrap(.~Raid_Color,scales="free_y") +
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


