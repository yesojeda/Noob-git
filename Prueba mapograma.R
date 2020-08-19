#Generación de mapa con infectados
library(readr)
datacovid_Jun7_global <- read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv")
View(datacovid_Jun7_global)
#Para saber en cuántas regiones se subidividen los países
#paises <- summary(factor(datacovid_Jun7_global$`Country/Region`))
#head(paises)

#Calculo para el 25 de marzo
'La cantidad de infectados al 25 de marzo de 2020 es..'
datacovid_Jun7_global[datacovid_Jun7_global$`Country/Region`=="Argentina",68]

#Falta ver cómo generar el mapa

library(maps)
library(ggrepel)
library(ggplot2)
library(rlang)
library(tidyverse)

library(readr)
library(viridis)
library(dplyr)
library(maps)
library(ggrepel)
planisferio <- map_data("world")
total_infec <-length(datacovid_Jun7_global)
datas_map <- datacovid_Jun7_global[ , c(1,2,3,4,total_infec)]


## get the COVID-19 data

# cutoffs based on the number of cases
mybreaks <- c(1, 200, 1000, 10000, 500000)

total_infec <-length(datacovid_Jun7_global)
datas_map <- datacovid_Jun7_global[ , c(1,2,3,4,total_infec)]
ggplot() +
  geom_polygon(data = planisferio, aes(x=long, y = lat, group = group), fill="grey", alpha=0.3) +
  geom_point(data=datacovid_Jun7_global, aes(x=Long, y=Lat, size=`4/17/20`, color=`4/17/20`), alpha=0.7) +
  scale_size_continuous(name="Cases", trans="log", range=c(1,7),breaks=mybreaks, labels = c("1-999", "1000-9999", "10,000-99,999", "100,000-999,999", "1,000,000+")) +
  
  scale_color_viridis_c(option="inferno",name="Cases", trans="log",breaks=mybreaks, labels = c("1-999", "1000-9999", "10,000-99,999", "100,000-999,999", "1,000,000+")) +
  theme_void() + 
  guides( colour = guide_legend()) +
  labs(caption = "Basado en datos oficiales Johns Hopkins CSSE. Visualization UNCuyo-Argentina ") +
  theme(
    legend.position = "bottom",
    text = element_text(color = "#22211d"),
    plot.background = element_rect(fill = "#ffffff", color = NA), 
    panel.background = element_rect(fill = "#ffffff", color = NA), 
    legend.background = element_rect(fill = "#ffffff", color = NA)
  )
