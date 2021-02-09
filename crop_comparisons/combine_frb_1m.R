frb.mxg #df with mean frb in all miscanthus plots (all establishment years, fertilization levels, etc., avg'd together)

frb.mxg = subset(frb.mxg, select = -c(frb.mxg) )
srg.frb = subset(srg.frb, select = -c(srg.frb) )

frb.all <- rbind(frb.mxg, srg.frb)
frb.all

#figure for fine root biomass 
ggplot(frb.all, aes(x=crop, y=mean))+
  geom_col(position="dodge")+theme_classic(base_size = 18)+
  geom_errorbar(aes(ymin= mean-se, ymax=mean+se), color = "black", width=.4, position = pd)+
  #scale_fill_discrete(name="Planting Year",
  #labels = c("2015", "2016", "2017"))+ 
  xlab("Species")+ 
  scale_y_continuous(expression("Fine root biomass "(g~m^-2)), breaks=seq(0,1000,100), expand = c(0,0))
#, fill = "seagreen4"