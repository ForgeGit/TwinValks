plotE <- df_special_v2  %>% filter(Cast_Seq<=2 & logNote3=="Random Logs" & duration_s>=95) %>%

  left_join(df_essence,by=c("logID"="log_id",
                            "fightID"="fight_id")) %>%

  filter(!is.na(Raid_Color) & Raid_Color != "NA" & Raid_Color !="Uncertain") %>% #group_by(special) %>% summarise(n=n())%>%

  select(logID,fightID,kill,special,Cast_Seq) %>%

  pivot_wider(names_from = Cast_Seq,
              values_from = special) %>% clean_names() %>%

  filter(!is.na(x2)) %>%

  mutate(`Ability Sequence`=paste0(x1,"-",x2)) %>%

  mutate(`Ability Sequence`=factor(`Ability Sequence`,
                                   levels=c(  "SoD-DV","SoD-LV","SoD-SoL",
                                              "DV-SoD","DV-SoL","DV-LV",
                                              "SoL-DV","SoL-LV","SoL-SoD",
                                              "LV-SoL","LV-SoD","LV-DV"))) %>%




  ggplot() +

  geom_bar(aes(x=`Ability Sequence`,fill=`Ability Sequence`)) +

  scale_fill_manual(values=c("#333333","#333333","#333333",
                             "#000000","#000000","#000000",
                             "#FFF0C1","#FFF0C1","#FFF0C1",
                             "#FFEB99", "#FFEB99", "#FFEB99")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE))+
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
        plot.title = element_markdown(face = "bold",
                                      size = scale_factor * 16,
                                      hjust = 0,
                                      margin = margin(b = 2)),
        plot.subtitle = element_markdown(lineheight = 0.35)
  ) +
  guides(size="none",alpha="none",fill="none",color="none")+
  labs(y="", x="",

       title="", subtitle="") +
  geom_vline(xintercept=c(3.5,6.5,9.5),linetype="dashed")#,

#   caption=c("<p><span style='font-family:forgefooter'>&#xe900;</span> &emsp; discord.gg/wp55kqmyYG - Discfordge &#91;Vivax-Pagle(US)&#93; <br> <span style='font-family:forgefooter'>&#xe901;</span> https:&#47;&#47;www&#46;github.com/ForgeGit/TwinValks</p>")) #+                                                           # Remove axis labels & ticks



ggsave(paste0("./_img/plot_E.png"),plotE,
       width = 10, height =2,units="in",device = "png",dpi=300)



