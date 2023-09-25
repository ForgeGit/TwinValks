
region_plot <- df_special_v2 %>%

  right_join(region,by=c("logID")) %>%

  filter(server.region!="" & !is.na(server.region)) %>%

  mutate(server.region=factor(server.region,
                              #levels=c("US","EU","TW/KR"))) %>%
                              levels=c("US","EU","TW","KR"))) %>%

  ggplot()+

  background_image(coliseum) +

  geom_point(aes(x=x,y=y,color=f_special),size=0.5,alpha=0.1) +

  scale_color_manual(values=c("#000000","#000000","#000000","#000000")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE),
                     limits = c(51012,61873))+
  scale_x_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE),
                     limits = c(-18239,-8679))+

  facet_wrap(.~server.region,nrow=1,scales="free") +

  vivax_theme()+
  theme(plot.caption = element_markdown(face = "italic",
                                        hjust = 0,
                                        vjust=0,
                                        size = scale_factor * 8,
                                        lineheight=0.3,
                                        margin = margin(t = -15,
                                                        l=0,
                                                        unit = "pt")),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        plot.title = element_markdown(face = "bold",
                                      size = scale_factor * 16,
                                      hjust = 0,
                                      margin = margin(b = 2))) +

  guides(size="none",alpha="none",fill="none",color="none")+
  labs(y="", x="",

       title="Twin Val&#39;kyr approximate positioning", subtitle="Top 2,500 speed 25-man Heroic (All Attempts)",

       caption=c("<p><span style='font-family:forgefooter'>&#xe900;</span> &emsp; discord.gg/wp55kqmyYG - Discfordge &#91;Vivax-Pagle(US)&#93; <br> <span style='font-family:forgefooter'>&#xe901;</span> https:&#47;&#47;www&#46;github.com/ForgeGit/TwinValks</p>")) #+                                                           # Remove axis labels & ticks



ggsave(paste0("./_img/plot_region.png"),region_plot,
       width = 9, height =3,units="in",device = "png",dpi=300)

region_plot
