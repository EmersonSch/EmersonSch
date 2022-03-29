## Entrada	de	dados

#Suponhamos	que	queremos	estudar	a	pluviosidade	mensal	num	ponto	do	país.	Os	dados	recolhidos	
#da	estação	meteorológica	foram:

pluv <- c(110, 100, 60, 80, 70, 18, 17, 17, 42, 89, 108, 143)
meses <-c("janeiro","fevereiro","março", "abril", "maio", "junho",
          "julho", "agosto", "setembro", "outubro", "novembro",
          "dezembro")

pluviometria.mensal<-data.frame(pluv,meses)


table(cut(pluviometria.mensal$pluv, breaks = pretty(pluv, n = 6)))

plot(pluv, pch=19)
abline(h=mean(pluv), v=6, col=2, lwd=2)

stripchart(pluviometria.mensal$pluv~pluviometria.mensal$meses,
           vertical=TRUE, pch=19, col=1)

simu<-read.table("simu.txt",header=T)
names(simu)
ambi<-simu[,1:6]
spp<-simu[,7:26]

plot(ambi[,"temperatura"],ambi[,"altitude"])
plot(ambi[,"altitude"],ambi[,"pH"])
plot(ambi[,"condutividade"],ambi[,"pH"])

rowSums(spp)
#Ver todos os repositórios de dados (Data sets) internos
data()
