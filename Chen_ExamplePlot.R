download.file(url="https://github.com/EEB504/EEB504/raw/master/GitR/dirtivore.rds", destfile="dirtivore.rda")
load("dirtivore.rda"); ls()

getwd()
setwd("/Users/chen/Desktop/gitR")

data<-read.csv("eeb504_data.csv")

head(data)
colnames(data)
plot(rMax~MassKG, xlim=c(0,1000), data=data)
masslog<-log10(data$MassKG)
rlog<-log10(data$rMax)

ggplot(data, aes(x = masslog, y = rlog)) +
  geom_point() +
  geom_smooth(method = "lm") +
  xlab(expression('Body Mass (Log'[10]*'KG)')) +
  ylab(expression('r'[max]*'(Log'[10]*'Transformed)'))
  
  ylab("r_Max (Log10Transformation")

