scale_factor = 2.65

vivax_theme <- function() {
  theme_bw() +

    theme(axis.title.x = element_text(size = scale_factor * 13),
          axis.title.y = element_text(size = scale_factor * 13),
          plot.title = element_markdown(face = "bold",
                                        size = scale_factor * 16,
                                        hjust = 0,
                                        margin = margin(b = -1)),
          plot.subtitle = element_markdown(face="italic",
                                           size = scale_factor * 12,
                                           lineheight=0.3,
                                           margin = margin(b = 5)),
          plot.caption = element_markdown(face = "italic",
                                          hjust = 0,
                                          vjust=1,
                                          size = scale_factor * 8,
                                          lineheight=0.3,
                                          margin = margin(t = -10, unit = "pt")),
          #  legend.position = c(1.2, 0.8),
          # legend.spacing.x = unit(1, "pt"),
          # legend.spacing.y = unit(0.5, "pt"),
          #legend.direction="horizontal",
          # legend.box.just = "left",
          # legend.title = element_text(size=scale_factor*13),
          # legend.text = element_text(size = scale_factor * 11,
          #                      lineheight=0.5),
          #  legend.background = element_rect(fill = "transparent"),
          axis.text = element_markdown(size= scale_factor * 10),
          strip.text.x = element_text(size = scale_factor * 12),
          strip.text.y = element_text(size = scale_factor * 12),
          legend.background = element_rect(fill = alpha('white', 0.4)),
          axis.text.x = element_markdown(size= scale_factor * 10,
                                         angle=45,hjust=1,
                                         margin = margin(t = -1, unit = "pt")),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()
    )
}

vivax_theme_title <- function() {
  theme_bw() +

    theme(axis.title.x = element_text(size = scale_factor * 13),
          axis.title.y = element_text(size = scale_factor * 13),
          plot.title = element_markdown(face = "bold",
                                        size = scale_factor * 17,
                                        hjust = 0,
                                        lineheight=0.3),
          plot.subtitle = element_markdown(face="italic",
                                           size = scale_factor * 13,
                                           lineheight=0.3),
          plot.caption = element_markdown(face = "italic",
                                          hjust = 0,
                                          vjust=1,
                                          size = scale_factor * 8,
                                          lineheight=c(0.5,0,0.75),
                                          margin = margin(t = -10, unit = "pt")),
          #     legend.position = c(0.26, 0.8),
          #     legend.spacing.x = unit(1, "pt"),
          #    legend.spacing.y = unit(0.5, "pt"),
          #    legend.direction="horizontal",
          #   legend.box.just = "left",
          #  legend.title = element_text(size=scale_factor*13),
          #   legend.text = element_text(size = scale_factor * 11,
          #        lineheight=0.5),
          #  legend.background = element_rect(fill = "transparent"),
          axis.text = element_markdown(size= scale_factor * 10),
          strip.text.x = element_text(size = scale_factor * 12),
          legend.background = element_rect(fill = alpha('white', 0.4)),
          axis.text.x = element_markdown(size= scale_factor * 10,
                                         angle=45,hjust=1,
                                         margin = margin(t = -1, unit = "pt"))
    )
}
