#Ejercicio para hacer histograma
Incendio<-read.table("Fire_intensity.txt", header = T) 
str(Incendio)
Incendio<-na.omit(Incendio)
str(Incendio)

#una manera de visualizar si los datos se distribuyen de manera normal
hist(Incendio$Fire.intensity)
#debido a que la mayoria de los incendios son de baja intensidad se hace una transformacion a logaritmo
#vamos a generar logaritmo como funcion

Incendio$Intrans<-log(Incendio$Fire.intensity)
Incendio$Intrans

hist(Incendio$Intrans)

#si quisiera sacar los incendios que son menores a 8 mil, usar which o subset
Incendio$Intrans
