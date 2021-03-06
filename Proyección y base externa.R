#Progresi�n 40 millones contagiados en Argentina con datos a 9 de marzo 

#C�lculo para el 7 de Junio
library(readr)
datacovid_Jun7_global <- read_csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv")
View(datacovid_Jun7_global)
'La cantidad de infectados al 6 de Junio de 2020 es..'
datacovid_Jun7_global[datacovid_Jun7_global$`Country/Region`=="Argentina",141]

#Progresi�n 40 millones contagiados en Argentina con datos a 9 de marzo
#Para saber en qu� cantidad de d�as se tendr�a esa cifra
dias = 1
infectados = 502
while (infectados < 40000000) {
  infectados = 1.62 * infectados
  dias = dias + 1
}
print(dias)
'En la situaci�n inicial del COVID en Argentina, se hubiesen requerido de esa cantidad de d�as 
para tener 40 millones de infectados en el pa�s'