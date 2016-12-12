###################################################################################################
dados <- read.csv("bola_em_queda_livre-F2.csv", header = FALSE, col.names=c("tempoMedio", "distanciaMedia"))
###################################################################################################

###################################################################################################
# Calculando Velocidade Media em cada queda
###################################################################################################

velocidadeMedia <- function(distanciaMedia, tempoMedio){
  velocidade <- distanciaMedia/tempoMedio
  return(velocidade)
}
###################################################################################################

###################################################################################################
# Calculando Aceleração Media em cada queda
###################################################################################################

aceleracaoMedia <- function(velocidadeMedia, tempoMedio){
  aceleracao <- velocidadeMedia/tempoMedio
  return(aceleracao)
}
###################################################################################################

###################################################################################################
# Gerando Gráfico de Tempo Medio x Distância Media
###################################################################################################
# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(TempoXDistancia).png")

# Criando o Gráfico
# dados$tempoMedio é o eixo X
# dados$distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dados$tempoMedio, dados$distanciaMedia, type="o", col="blue", 
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
# Chamando a função que calcula a Velocidade media a partir da Distância Media e do Tempo Medio
velocidadeMedia <- velocidadeMedia(dados$distanciaMedia, dados$tempoMedio)
###################################################################################################

###################################################################################################
# Gerando Gráfico da Velocidade Media x Distância Media 
###################################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(VelocidadexDistancia).png")

# Criando o Gráfico
# velocidadeMedia é o eixo X
# dados$distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, dados$distanciaMedia, type="o", col="blue", 
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
# velocidadeMedia é o eixo X
# dados$tempoMedio é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, dados$tempoMedio, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Tempo (segundos)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()
###################################################################################################

###################################################################################################
# Chamando a função que calcula a Aceleração media a partir da Velocidade Media e do Tempo Medio
aceleracaoMedia <- aceleracaoMedia(velocidadeMedia, dados$tempoMedio)
###################################################################################################

###################################################################################################
# Gerando Gráfico de Distância Media x Aceleração Media
###################################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(DistanciaxAceleracao).png")

# Criando o Gráfico
# dados$distanciaMedia é o eixo X
# aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dados$distanciaMedia, aceleracaoMedia, type="o", col="blue", 
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
# velocidadeMedia é o eixo X
# aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, aceleracaoMedia, type="o", col="blue", 
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
# dados$tempoMedio é o eixo X
# aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(dados$tempoMedio, aceleracaoMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Tempo (segundos)",
  ylab="Aceleração (metros por segundos[quadrado])")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()