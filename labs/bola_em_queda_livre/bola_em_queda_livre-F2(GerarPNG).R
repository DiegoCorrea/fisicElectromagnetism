###################################################################################################
# Carregando dadosF2 do CSV que é separado por ","
###################################################################################################
dadosF2 <- read.csv("bola_em_queda_livre-F2.csv", header = FALSE, col.names=c("tempoInicial","tempoFinal","distanciaInicial","distanciaFinal"))
###################################################################################################

GRAVIDADE <- c(9.8,9.8,9.8,9.8,9.8,9.8)

###################################################################################################
# Calculando Velocidade Final em cada queda
###################################################################################################
calcularVelocidadeFinal <- function(velocidadeInicial, aceleracao, tempoFinal){
  velocidadeFinal <- velocidadeInicial + (aceleracao*tempoFinal)
  return(velocidadeFinal)
}
###################################################################################################

###################################################################################################
# Calculando Aceleração Media em cada queda
###################################################################################################
calcularAceleracaoMedia <- function(velocidadeFinal, velocidadeInicial, tempoFinal, tempoInicial){
  aceleracaoMedia <- (velocidadeFinal - velocidadeInicial)/(tempoFinal - tempoInicial)
  return(aceleracaoMedia)
}
###################################################################################################
# Calculando o Tempo e Distância Media, e adicionando com nova coluna
###################################################################################################
dadosF2["tempoMedio"] <- dadosF2$tempoFinal - dadosF2$tempoInicial
dadosF2["distanciaMedia"] <- dadosF2$distanciaFinal - dadosF2$distanciaInicial
dadosF2["velocidadeInicial"] <- c(0,0,0,0,0,0)
###################################################################################################

###################################################################################################
# Chamando a função que calcula a Velocidade media a partir da Distância Media e do Tempo Medio
###################################################################################################
dadosF2["velocidadeFinal"] <- calcularVelocidadeFinal(dadosF2$velocidadeInicial, GRAVIDADE, dadosF2$tempoFinal)
###################################################################################################

###################################################################################################
# Chamando a função que calcula a Aceleração media a partir da Velocidade Media e do Tempo Medio
###################################################################################################
dadosF2["aceleracaoMedia"] <- calcularAceleracaoMedia(dadosF2$velocidadeFinal, dadosF2$velocidadeInicial, dadosF2$tempoFinal, dadosF2$tempoInicial)
###################################################################################################

###################################################################################################
# Gerando Gráfico de Tempo Medio x Distância Media
###################################################################################################
# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(TempoXDistancia).png")

# Criando o Gráfico
# dadosF2$tempoMedio é o eixo X
# dadosF2$distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dadosF2$tempoMedio, dadosF2$distanciaMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Tempo (segundos)",
  ylab="Distância (metros)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()
###################################################################################################

###################################################################################################
# Gerando Gráfico da Velocidade Media x Distância Media 
###################################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(VelocidadexDistancia).png")

# Criando o Gráfico
# dadosF2$velocidadeFinal é o eixo X
# dadosF2$distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dadosF2$velocidadeFinal, dadosF2$distanciaMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Distância (metros)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()

###################################################################################################
# Gerando Gráfico da Velocidade Media x Tempo Medio
###################################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(VelocidadexTempo).png")

# Criando o Gráfico
# dadosF2$tempoMedio é o eixo x
# dadosF2$velocidadeFinal é o eixo y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dadosF2$tempoMedio, dadosF2$velocidadeFinal, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Tempo (segundos)",
  ylab="Velocidade (metros por segundos)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()
###################################################################################################

###################################################################################################
# Gerando Gráfico de Distância Media x Aceleração Media
###################################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(DistanciaxAceleracao).png")

# Criando o Gráfico
# dadosF2$distanciaMedia é o eixo X
# dadosF2$aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dadosF2$distanciaMedia, dadosF2$aceleracaoMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Distância (metros)",
  ylab="Aceleração (metros por segundos[quadrado])")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()

###################################################################################################
# Gerando Gráfico da Velocidade Media x Aceleração Media
###################################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(VelocidadexAceleracao).png")

# Criando o Gráfico
# dadosF2$velocidadeFinal é o eixo X
# dadosF2$aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dadosF2$velocidadeFinal, dadosF2$aceleracaoMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Aceleração (metros por segundos[quadrado])")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()

###################################################################################################
# Gerando Gráfico de Tempo Medio x Aceleração Media
###################################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(TempoxAceleracao).png")

# Criando o Gráfico
# dadosF2$tempoMedio é o eixo X
# dadosF2$aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dadosF2$tempoMedio, dadosF2$aceleracaoMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Tempo (segundos)",
  ylab="Aceleração (metros por segundos[quadrado])")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()

print(dadosF2)