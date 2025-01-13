db<-read.csv("AreaBasal.csv",header=T)
head(db)
names(db)
str(db)
#vamos a calcular el AB de un arbol promedio de la clase diametral i
DAP<-c(2.3,4.5,5.5,6.0,6.4,6.8,7.7,7.9,8.1,9.0)
DAP
str(DAP)
abt<-3.14*(DAP^2/40000)
prueba<-abt*db[1,]
prueba

#ahora vamos a sumar las ABs de todas las clases diametricas de la parcela 1
#round va a hacer el redondeo hacia abajo
abtp1<-round(sum(prueba), digits =2)
abtp1

abtpv <- numeric(length(DAP)) #vector vacio
abtpv
for (i in 1:length(DAP)){
prueba<-abt*db[i,] 
#prueba es un elemento temporal que lo hara temporal, para hacerlo fijo es un vector vacio 
#necesitarias un dataframe si quisiera rastrear prueba lo que sucede con ella, pero si no, 
#simplemente que sea temporal por ejemplo, con el dataframe quisiera
abtp1<-sum(prueba)
abtpv[i]<-abtp1
abtpv
}
abtt<-sum(abtpv)
abtt
