
plotA <- df_special_v2  %>% filter(Cast_Seq==1 & logNote3=="Random Logs") %>%

  ggplot() +

  geom_bar(aes(x=f_special,fill=f_special)) +

  scale_fill_manual(values=c("#333333","#000000","#FFF0C1","#FFEB99")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE))+
  # facet_grid(size~difficulty,scale="free_y") +
  vivax_theme()+
  theme(axis.text.x = element_markdown(size= scale_factor * 9,
                                       angle=0,hjust=0.5,vjust=0.6,
                                       margin = margin(t = 0,l=0, unit = "pt"),lineheight = 0),
        plot.caption = element_markdown(face = "italic",
                                        hjust = 0,
                                        vjust=0,
                                        size = scale_factor * 8,
                                        lineheight=0.3,
                                        margin = margin(t = 0,
                                                        l=0,
                                                        unit = "pt")),
        plot.title = element_markdown(face = "bold",
                                      size = scale_factor * 16,
                                      hjust = 0,
                                      margin = margin(b = 2)),
        axis.title.x = element_markdown(margin = margin(b = -10)),
        plot.subtitle = element_markdown(lineheight = 0.35,
                                         size = scale_factor * 7
        )
  ) +
  guides(size="none",alpha="none",fill="none",color="none")+
  labs(y="# of Encounters (Wipes & Kills)", x="",

       title="Val&#39;kyr Twins - 1st Special Ability Cast", subtitle="Shield of Darkness (SoD), Dark Vortex (DV), Shield of Lights (SoL), Light Vortex (LV) <br> 6,704 encounters for 25-man Heroic from 20/09 to 22/09 (dd/mm)",

   caption=c("<p><span style='font-family:forgefooter'>&#xe900;</span> &emsp; discord.gg/wp55kqmyYG - Discfordge &#91;Vivax-Pagle(US)&#93; <br> <span style='font-family:forgefooter'>&#xe901;</span> https:&#47;&#47;www&#46;github.com/ForgeGit/TwinValks</p>")) #+                                                           # Remove axis labels & ticks



ggsave(paste0("./_img/plot_A.png"),plotA,
       width = 5, height =5,units="in",device = "png",dpi=300)

