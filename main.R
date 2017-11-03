dat = read.csv("dataset.csv", header = TRUE, sep = ';')
anios=dat$YEAR
paises =dat$COUNTRY
escalas= dat$ESCALA

plot(paises, escalas)
plot(anios,escalas)
plot(anios, escalas, xlim=range(anios), ylim=range(escalas), xlab="x", ylab="y", 
     main = "noise-less data",pch=16,col="blue")
lines(anios[order(anios)], escalas[order(anios)], xlim=range(anios), ylim=range(escalas), pch=16,col="red")

plot(anios,escalas, type=, col="blue")

summary(escalas)
hist(escalas)

plot(anios, escalas, type='n')
points(anios[paises=='CHINA'], escalas[paises=='CHINA'], pch='C')

plot(anios[paises=='CHINA'], escalas[paises=='CHINA'], type = 'l', xlab="Anios", ylab="Escala", main = "China")

# Cantidad de terremotos por año
plot(data.frame(table(anios)), type='l', col='blue', xlab="Anio", ylab="Cantidad", main='Terremotos por año')

# Acumulado de magnitudes
acum = aggregate( ESCALA ~ YEAR, dat, sum)
plot(acum, type = 'l', xlab="Anio", ylab="Acumulado", main='Acumulado de magnitudes por año' )

# Media de magnitudes
media = aggregate( ESCALA ~ YEAR, dat, mean)
plot(media, type = 'l', xlab="Anio", ylab="Media", main='Media de magnitudes por año' )

# Cantidad de terremotos por pais
plot(data.frame(table(paises)), type='l', col='blue')

por_pais = data.frame(table(paises))

# TOP 5 Terremotos por pais
head(por_pais[order(-por_pais$Freq),], 5)

acum_por_pais = aggregate( ESCALA ~ COUNTRY, dat, sum)
head(acum_por_pais[order(-acum_por_pais$ESCALA),], 5)
