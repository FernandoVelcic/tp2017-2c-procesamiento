paises_nombres =c("japon","china","usa","italia","nueva_zelanda","turquia","taiwan","nepal")


anios=c(2011,1995,2008,1994,1980,1976,2011,2004,1999,2010,2012,1999,2015,1906,1923,1989)
paises =c(1, 1, 2, 3, 4, 2, 5, 1, 6, 7, 4, 8, 9, 3, 1, 3)
escalas= c(9.1,6.9,8.0,6.7,6.9,7.8,6.3,6.8,7.6,8.8,6.1,7.6,7.8,7.8,7.9,6.9)

plot(paises, escalas)



plot(anios,escalas)


plot(anios, escalas, xlim=range(anios), ylim=range(escalas), xlab="x", ylab="y", 
     main = "noise-less data",pch=16,col="blue")
lines(anios[order(anios)], escalas[order(anios)], xlim=range(anios), ylim=range(escalas), pch=16,col="red")


plot(anios,escalas, type=, col="blue")

summary(escalas)
hist(escalas)

