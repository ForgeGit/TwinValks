plotD <- df_special_v2  %>% filter(Cast_Seq==1 & logNote3=="Random Logs") %>%

  left_join(df_essence,by=c("logID"="log_id",
                            "fightID"="fight_id")) %>%

  filter(!is.na(Raid_Color) & Raid_Color != "NA" & Raid_Color !="Uncertain") %>%
  mutate(Raid_Color = ifelse(Raid_Color=="Dark", "Dark Essence","Light Essence")) %>%

  ggplot() +

  background_image(coliseum) +

  geom_point(aes(x=x,y=y,color=f_special),size=0.3,alpha=0.25) +

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
                                        margin = margin(t = -30,
                                                        l=0,
                                                        unit = "pt")),
        plot.subtitle = element_markdown(margin = margin(t = 15,
                                                         l=0,
                                                         unit = "pt")),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())+
  labs(y="", x="", subtitle = "Val&#39;kyr position @ 1st cast")+

  guides(size="none",alpha="none",fill="none",color="none")

plotD <- plotD +

  facet_wrap(. ~ Raid_Color,scales="free",nrow=2)

ggsave(paste0("./_img/plot_D.png"),plotD,
       width = 2.235, height=5,units="in",device = "png",dpi=300)

plotD

