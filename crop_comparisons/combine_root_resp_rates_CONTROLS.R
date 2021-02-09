rsp.srg.0 #mean root resp./ g frb in 0 fertilization level
rsp.mxg.0 #mean root resp./ g frb in 0 fertilization level

rsp.srg.0 = subset(rsp.srg.0, select = -c(rsp.srg.0) ) #remove empty column 
rsp.mxg.0 = subset(rsp.mxg.0, select = -c(rsp.mxg.0) ) #remove empty column 
rootresp.0 <- rbind(rsp.mxg, rsp.srg) #combine two dataframes 
rootresp.0 #check it out

#figure for root respiration rate g-1 fine root biomass 
ggplot(rootresp.0, aes(x=crop, y=mean))+
  geom_col(position="dodge", , fill = "black")+theme_classic(base_size = 16)+
  geom_errorbar(aes(ymin= mean-se, ymax=mean+se), color = "black", width=.3, position = pd)+
  #scale_fill_discrete(name="Planting Year",
  #labels = c("2015", "2016", "2017"))+ 
  xlab("Species")+ 
  scale_y_continuous(expression("Root respiration "(mg~C-CO[2]~g^-1~dry~root~biomass~day^-1)), breaks=seq(0,25,4), expand = c(0,0))+theme(axis.title.y = element_text(size = 10))

