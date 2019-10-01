





p=1; px=c(25,50,100,150,200); pp=c(4,16:18,15)

sx=as.numeric(rownames(fitm2$fitratio))[ c(1, seq(0,200, 10)[-1]) ]

set.seed(28)
sx1 = c(seq(0.01, 0.09, length.out = 40), 0.1 )
x1=sapply(sx1, function(i) wfsim(i,N=1000,start=50,len=200)) %>% reshape2::melt()
x1$col = rep(sx1, each=200) 
x=x1[x1$value<1000,]

g = ggplot(x, aes(x=Var1, y=value, group=Var2, color=col, size=col)) +
  geom_line(alpha=0.3) +
  scale_size(range=c(0.1,2)) +
  scale_color_viridis_c() +
  theme_dark() +
  coord_cartesian(xlim=c(55,180), ylim=c(5,1002), expand=0)+
  annotate("text", x=176, y=900, label=
             ("Visualizing\nYour Data\nUsing\nR"), 
           hjust="right",vjust="top",
           color=rgb(1,1,1,0.7) , size=16, fontface="bold") +
  annotate("text", x=176, y=155, label=
             ("Workshop @ CDCS\nNovember 1, 2019"), 
           hjust="right",vjust="top",
           color=rgb(1,1,1,0.7) , size=7, fontface="bold") +
  theme(
    plot.background = element_rect(fill="gray6", color="gray6"),
    panel.background = element_rect(fill="gray6", color="gray6"),
    panel.grid = element_line(color="gray3"),
    axis.title = element_blank(),
    legend.position = "none",
    axis.line = element_blank(),
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    plot.margin = unit(c(0,0,0,0), "mm")
  )


ggsave("banner.png", g, device = "png", width = 1.75*6, height =  0.8*6, dpi = 600)








