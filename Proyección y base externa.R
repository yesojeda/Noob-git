#Progresión 40 millones contagiados en Argentina con datos a 9 de marzo 

#Cálculo para el 7 de Junio
library(readr)
datacovid_Jun7_global <- read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv")
View(datacovid_Jun7_global)
'La cantidad de infectados al 6 de Junio de 2020 es..'
datacovid_Jun7_global[datacovid_Jun7_global$`Country/Region`=="Argentina",141]

#Progresión 40 millones contagiados en Argentina con datos a 9 de marzo
#Para saber en qué cantidad de días se tendría esa cifra
dias = 1
infectados = 502
while (infectados < 40000000) {
  infectados = 1.62 * infectados
  dias = dias + 1
}
print(dias)
'En la situación inicial del COVID en Argentina, se hubiesen requerido de esa cantidad de días 
para tener 40 millones de infectados en el país'