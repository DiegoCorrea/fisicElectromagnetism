# Criando Vetor de Tempo e Distância
tempo <- c(0.144,0.204,0.2485,0.2885,0.322,0.3535)
distancia <- c(0.088,0.188,0.288,0.388,0.488,0.588)

# Criando uma imagem em png
png(file = "bola_em_queda_livre-F2.png")

View(tempo)

# Criando o Gráfico
# tempo é o eixo X
# distancia é o eixo Y
# type "o" é o grafico contendo todos os pontos
# main é o título do grafico, irá aparecer no centro, na parte superior
# lwd é a espessura da linha do grafico
# xlab é o título do eixo X
# ylab é o título do eixo Y
plot(tempo, distancia, type="o", col="blue", 
	main="Experimento 1: \nBola em queda livre \nF2",
	lwd=3,
	xlab="Tempo (segundos)",
	ylab="Distância (metros)")

# grid cria quadrantes no gráfico, essas linhas da divisoria, terão a cor vermelha
grid(col="red")

# Salvando no png tudo que foi printado no gráfico
dev.off()