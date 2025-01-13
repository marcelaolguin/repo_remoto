SACMEX<-read.csv("CONTRERAS8.csv", header=T,encoding = "UTF-8",check.names =F)
str(SACMEX)
head(SACMEX)
#cuando el archivo tiene caracteres especiales, mejor guardarlo como UTF8 cvs
str(SACMEX)
names(SACMEX)


SACMEX$Tipo<-ifelse(SACMEX$DICTAMEN=="ATARJEA OBSTRUIDAA"| SACMEX$DICTAMEN=="COLADERA OBSTRUIDA","Obstruction",
      ifelse(SACMEX$DICTAMEN=="FALTA DE INFRAESTRUCTURA"| SACMEX$DICTAMEN=="INSUFICIENCIA DE ATARJEA Y COLECTOR"|SACMEX$DICTAMEN=="INSUFICIENCIA DE GRIETA","Sewage overflow",
      ifelse(SACMEX$DICTAMEN=="RUPTURA DE TUBO DE AGUA POTABLE", "Breaking off",
      ifelse(SACMEX$DICTAMEN=="INEXISTENTE AL MOMENTO DE LA INSPECCION [NO SE APRECIAN DIMENSIONES]"| SACMEX$DICTAMEN=="INEXISTENTE AL MOMENTO DE LA INSPECCION","Lacking Info",
      ifelse(SACMEX$DICTAMEN=="NO SE OPERO CARCAMO DE BOMBEO","Pump Failure",
      ifelse(SACMEX$DICTAMEN=="HUNDIMIENTO DE CARPETA ASFALTICA","Sinking","Otro"))))))
                  
SACMEX
#vamos a generar dos grupos
Grupo1<-subset(SACMEX,Año%in%c(2007, 2008, 2009))
Grupo2<-subset(SACMEX,Año%in%c(2010,2011,2012,2013,2014))
str(Grupo2)
Grupo2

#vamos a generar una nueva variable que sera frecuencia
SACMEX$subgrupo<-ifelse(SACMEX$Año%in%
      c(2007:2009),"sub1",
      ifelse(SACMEX$Año%in%c(2010:2014),"sub2","otros") )
SACMEX$Frecuencia<-rep(1,length(TIPO))
