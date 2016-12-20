
##### Leitura dos dados do experimento
data <- read.csv(file = "pendulo_tamanho_variado.csv", sep = ",", header = TRUE)

##### Converter Graus em Radiano 
radiano <- function(graus){
  radiano <- (graus*pi)/180
  return (radiano)
}

#### Formula do valor de Omega
omega <- function (intervaloTempo){
  return (2*pi)*(10/intervaloTempo)
}

##### Formula do valor da Amplitude
amplitude <- function(l){
  return (l*sin(radiano(10)))
}

##### Formula do MHS
mhs <- function(l, intervaloTempo, tempo){
  Amplitude <- amplitude(l)
  angulo <- (omega(intervaloTempo)*tempo)+0
  anguloRadiano <- radiano(angulo)
  return ((Amplitude*cos(anguloRadiano)))
}

##### Determina um intervalo de tempo de 0 a 100
variacaoDeTempo <- function(){
  tempo <- c()
  for(x in 1:100){
    tempo[x] <- x
  }
  return (tempo)
}

##### Loop para calcular o MHS
loopMhs <- function(){
  xt <- c()
  tempo<-variacaoDeTempo()
  for(x in 1:100){
    xt[x]<-mhs(data[5,1], data[5,2], tempo[x])
  }
  return (xt)
}

##### Cria o plot do gráfico do MHS
graficoMhs <- function(){
  MHS <- loopMhs()
  Tempo <- variacaoDeTempo()
  return(plot(Tempo,MHS, main = "Descolamento x Tempo", lwd=3, xlab="Tempo (segundos)", ylab="Deslocamento (metros)"))
}

##### Cria uma imagem do gráfico MHS
printGragicoMhs <- function(){
  imagem <- graficoMhs()
  grid(col="red")
}

##### Formula do período
periodo <- function(l,intervaloTempo){
  return(2*pi*sqrt(l/9.8))
}

##### Loop para calcular o Período
loopPeriodo <- function(){
  f <- c()
  for(x in 1:5){
    f[x] <- periodo(data[x,1], data[x,2])
  }
  return(f)
}

##### Cria o plot do gráfico do Período
graficoPeriodo <- function(){
  distancia <- c()
  for(x in 1:5){
    distancia[x] <- data[x,2]
  }
  Período <- loopPeriodo()
  return(plot(distancia, Período, type = 'b', main = "Período x Distância", lwd=3, xlab="Distância", ylab="Período"))
}

##### Cria uma imagem do gráfico Periodo
printGragicoPeriodo <- function(){
  imagem <- graficoPeriodo()
  dev.off()
}

##### Formula do valor da velocidade
velocidade <- function(l, intervaloTempo, tempo){
  Omega <- omega(intervaloTempo)
  Amplitude <- amplitude(l)
  angulo <- (Omega*tempo)+0
  anguloRadiano <- radiano(angulo)
  return (-Omega*Amplitude*sin(anguloRadiano))
}

##### Loop para calcular a Velocidade
loopVelocidade <-function(){
  vt <- c()
  tempo<-variacaoDeTempo()
  for(x in 1:100){
    vt[x]<-velocidade(data[5,1], data[5,2], tempo[x])
  }
  return (vt)
}

##### Cria o plot do gráfico Da Velocidade
graficoVelocidade <- function(){
  return(plot(variacaoDeTempo(),loopVelocidade(), main = "Velocidade x Tempo", lwd=3, xlab="Tempo (segundos)", ylab="Velocidade (metros)"))
}

##### Cria uma imagem do gráfico da Velocidade
printGragicoVelocidade <- function(){
  imagem <- graficoVelocidade()
  grid(col="red")
}

##### Formula do valor da Aceleracao
aceleracao <- function(l, intervaloTempo, tempo){
  Omega <- omega(intervaloTempo)*omega(intervaloTempo)
  Amplitude <- amplitude(l)
  angulo <- (omega(intervaloTempo)*tempo)+0
  anguloRadiano <- radiano(angulo)
  return(-Omega*Amplitude*cos(anguloRadiano)) 
}

##### Loop para calcular da Aceleracao
loopAceleracao <-function(){
  at <- c()
  tempo<-variacaoDeTempo()
  for(x in 1:100){
    at[x]<-aceleracao(data[5,1], data[5,2], tempo[x])
  }
  return (at)
}

##### Cria o plot do gráfico da Aceleração
graficoAceleracao <- function(){
  return(plot(variacaoDeTempo(),loopAceleracao(), main = "Aceleração x Tempo", lwd=3, xlab="Tempo (segundos²)", ylab="Aceleração (metros)"))
}

##### Cria uma imagem do gráfico da Aceleração
printGragicoAceleracao <- function(){
  imagem <- graficoAceleracao()
  grid(col="red")
}