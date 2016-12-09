###################################################
# Criando Vetor de Tempo Medio e Distância Media
tempoMedio <- c(0.144,0.204,0.2485,0.2885,0.322,0.3535)
distanciaMedia <- c(0.088,0.188,0.288,0.388,0.488,0.588)
###################################################

#
# Gráfico Tempo x Distância
#
# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(TempoXDistancia).png")

View(tempoMedio)

# Criando o Gráfico
# tempoMedio é o eixo X
# distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(tempoMedio, distanciaMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Tempo (segundos)",
  ylab="Distância (metros)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()

##################################################################################
# Calculando Velocidade Media em cada queda
##################################################################################

velocidadeMedia <- function(tempoMedio, distanciaMedia){
  velocidade <- distanciaMedia/tempoMedio
  return(velocidade)
}

# Chamando a função que calcula a Velocidade media a partir do Tempo Medio e da Distância Media
velocidadeMedia <- velocidadeMedia(tempoMedio,distanciaMedia)
#################################################################################
# Gerando Gráfico de Distância Media pela Velocidade Media
#################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(VelocidadexDistancia).png")

# Criando o Gráfico
# velocidadeMedia é o eixo X
# distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, distanciaMedia, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Distância (metros)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()

#################################################################################
# Gerando Gráfico de Tempo Medio pela Velocidade Media
#################################################################################

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2(VelocidadexTempo).png")

# Criando o Gráfico
# velocidadeMedia é o eixo X
# tempoMedio é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, tempoMedio, type="o", col="blue", 
  main="Experimento 1: \nBola em queda livre \nF2",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Tempo (segundos)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()