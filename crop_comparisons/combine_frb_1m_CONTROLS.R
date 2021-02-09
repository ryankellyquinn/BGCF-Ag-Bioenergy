frb.mxg.0 #df with mean frb in all miscanthus plots fertilized at 0 kg/ha (all establishment years, etc., avg'd together)
frb.srg.0 #df with mean frb in all sorghum plots fertilized at 0 kg/ha (avg'd over genotype, row location, etc.)

frb.mxg.0 = subset(frb.mxg.0, select = -c(frb.mxg.0) )
frb.srg.0 = subset(frb.srg.0, select = -c(frb.srg.0) )

frb.all <- rbind(frb.mxg.0, frb.srg.0)
frb.all

#figure for fine root biomass 
ggplot(frb.all, aes(x=crop, y=mean))+
  geom_col(position="dodge", fill="black")+theme_classic(base_size = 18)+
  geom_errorbar(aes(ymin= mean-se, ymax=mean+se), color = "black", width=.4, position = pd)+
  #scale_fill_discrete(name="Planting Year",
  #labels = c("2015", "2016", "2017"))+ 
  xlab("Species")+scale_y_continuous(expression("Fine root biomass "(g~m^-2)), breaks=seq(0,1000,100), expand = c(0,0))
