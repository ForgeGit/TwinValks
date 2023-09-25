
# Plot the scatter plot with marginal histograms
plot8 <- ggMarginal(plot7_8, type = "histogram",
                             groupColour = TRUE,
                             groupFill = TRUE)


plot8
ggsave(paste0("./_img/plot_test_8.png"),plot8,
       width = 5, height=5,units="in",device = "png",dpi=300)
