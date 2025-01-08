library("tidyverse")
library("readxl")
data<-('DAT.xlsx')
head(DAT)
library("ggplot2")
library("readxl")
library("dplyr")
ggplot(data=DAT,aes(x=AK,y=JPM))+
  geom_point(color="blue",size=2)+
  labs(title="tabel 1. Hubungan antara Indeks Kesehatan dan Jumlah Penduduk Miskin",
       x="Indeks Kesehatan",
       y="Jumlah Penduduk Miskin",
       caption = "sumber : Badan Pusat Statistik")+
  theme_classic()
reg1<-lm(AK~JPM,data=DAT)
summary (reg1)



