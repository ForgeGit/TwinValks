
plot7_8 <- df_special_v2  %>% filter(Cast_Seq==1) %>%

  ggplot()+

  background_image(coliseum) +

  geom_point(aes(x=x,y=y,color=f_special),size=0.25,alpha=0.75) +

  scale_color_manual(values=c("#333333","#000000","#FFF0C1","#FFEB99")) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE),
                     limits = c(51012,61873))+
  scale_x_continuous(labels=function(x) format(x, big.mark = ",", scientific = FALSE),
                     limits = c(-18239,-8679))+

  vivax_theme()+
  theme(plot.caption = element_markdown(face = "italic",
                                        hjust = 0,
                                        vjust=0,
                                        size = scale_factor * 8,
                                        lineheight=0.3,
                                        margin = margin(t = -5,
                                                        l=0,
                                                        unit = "pt")),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())+
  labs(y="", x="")+

  guides(size="none",alpha="none",fill="none",color="none")

plot7 <- plot7_8 +

  facet_wrap(.~f_special,scales="free",nrow=1)  +
  labs(title="", subtitle = "x,xxx logs and xx,xxx encounters for randomly selected logs and top x,xxx ranked logs.",

       caption=c("<p><span style='font-family:forgefooter'>&#xe900;</span> &emsp; discord.gg/wp55kqmyYG - Discfordge &#91;Vivax-Pagle(US)&#93; <br> <span style='font-family:forgefooter'>&#xe901;</span> https:&#47;&#47;www&#46;github.com/ForgeGit/TwinValks</p>")) #+                                                           # Remove axis labels & ticks



ggsave(paste0("./_img/plot_7.png"),plot7,
       width = 11, height=3,units="in",device = "png",dpi=300)

plot7
