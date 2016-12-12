###################################################################################################
# Criando Vetor de Tempo Medio e Distância Media
tempoMedio <- c(0.144,0.204,0.2485,0.2885,0.322,0.3535)
distanciaMedia <- c(0.088,0.188,0.288,0.388,0.488,0.588)
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
# Criando um arquivo PDF onde será salvo os dados
pdf(file = "bola_em_queda_livre-F2.pdf", width = 11, height = 8 )

###################################################################################################
# Capa
###################################################################################################
# Dividindo uma pagina em 10 linhas
plot(0:10, type = "n", xaxt="n", yaxt="n", bty="n", xlab = "", ylab = "")

###################################################################################################
# Imprimindo o texto na capa, cada um em uma linha
text(6, 8, "FISA75 - Experimento 1")
text(6, 7, "Bola em queda livre no F2")
text(6, 6, "Grupo 3")

###################################################################################################
# Sobre o Experimento
###################################################################################################
# Dividindo uma pagina em 20 colunas
plot(0:20, type = "n", xaxt="n", yaxt="n", bty="n", xlab = "", ylab = "", main="")

###################################################################################################
# Imprimindo o texto na capa, cada um em uma linha
mtext("Sobre o experimento", cex=1.5)
mtext(line=-5, adj=0,"Experimento realizado com equipamento de queda livre montado sobre uma bancada e com esfera metálica em 
contato com eletroímã, configurada na opção F2 que permite medir o tempo que leva até o objeto passar na 
frente do primeiro sensor, foram feitos 6 procedimentos para 6 valores de h e 2 tempo de queda em cada 
posição do sensor.")

###################################################################################################
# Gerando Gráfico de Tempo Medio x Distância Media
###################################################################################################

# Criando o Gráfico
# tempoMedio é o eixo X
# distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(tempoMedio, distanciaMedia, type="o", col="blue", 
  main="Gráfico Tempo x Distância",
  lwd=3,
  xlab="Tempo (segundos)",
  ylab="Distância (metros)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Adiciona texto ao topo do gráfico
# adj=0, significa alinhado a esquerda
# cex=1.0 é o tamanho normal
mtext("Use the mtext() function", adj=0, cex=1.0)

###################################################################################################

###################################################################################################
# Chamando a função que calcula a Velocidade media a partir da Distância Media e do Tempo Medio
velocidadeMedia <- velocidadeMedia(distanciaMedia, tempoMedio)
###################################################################################################

###################################################################################################
# Gerando Gráfico da Velocidade Media x Distância Media 
###################################################################################################

# Criando o Gráfico
# velocidadeMedia é o eixo X
# distanciaMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, distanciaMedia, type="o", col="blue", 
  main="Gráfico Velocidade x Distância",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Distância (metros)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")
# Add text
mtext("Use the mtext() function")

###################################################################################################
# Gerando Gráfico da Velocidade Media x Tempo Medio
###################################################################################################

# Criando o Gráfico
# velocidadeMedia é o eixo X
# tempoMedio é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, tempoMedio, type="o", col="blue", 
  main="Gráfico Velocidade x Tempo",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Tempo (segundos)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

###################################################################################################

###################################################################################################
# Chamando a função que calcula a Aceleração media a partir da Velocidade Media e do Tempo Medio
aceleracaoMedia <- aceleracaoMedia(velocidadeMedia, tempoMedio)
###################################################################################################

###################################################################################################
# Gerando Gráfico de Distância Media x Aceleração Media
###################################################################################################

# Criando o Gráfico
# distanciaMedia é o eixo X
# aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(distanciaMedia, aceleracaoMedia, type="o", col="blue", 
  main="Gráfico Distância x Aceleração",
  lwd=3,
  xlab="Distância (metros)",
  ylab="Aceleração (metros por segundos[quadrado])")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

###################################################################################################
# Gerando Gráfico da Velocidade Media x Aceleração Media
###################################################################################################

# Criando o Gráfico
# velocidadeMedia é o eixo X
# aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(velocidadeMedia, aceleracaoMedia, type="o", col="blue", 
  main="Gráfico Velocidade x Aceleração",
  lwd=3,
  xlab="Velocidade (metros por segundos)",
  ylab="Aceleração (metros por segundos[quadrado])")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

###################################################################################################
# Gerando Gráfico de Tempo Medio x Aceleração Media
###################################################################################################

# Criando o Gráfico
# tempoMedio é o eixo X
# aceleracaoMedia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(tempoMedio, aceleracaoMedia, type="o", col="blue", 
  main="Gráfico Tempo x Aceleração",
  lwd=3,
  xlab="Tempo (segundos)",
  ylab="Aceleração (metros por segundos[quadrado])")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no PDF tudo que foi printado até agora
dev.off()