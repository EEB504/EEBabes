library(ggplot2)
dirtdata<-read.csv("dirtivore.csv")
plot(dirtdata$MassKG,dirtdata$rMax)
masslog<-log10(dirtdata$MassKG)
rlog<-log10(dirtdata$rMax)
model1<-lm(rlog~masslog)
plot1<-ggplot()+
  geom_point(aes(masslog,rlog), colour="grey")+
  xlab(expression('Body Mass (Log'[10]*'KG)'))+
  ylab(expression('r'[max]*' (Log'[10]*'transformed)'))+
  geom_abline(intercept=-0.0859,slope = -0.20229)+
  ylim(-1.0,1)
  
  
