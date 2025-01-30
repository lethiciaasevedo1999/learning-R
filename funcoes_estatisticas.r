'A partir dessa matriz, vamos responder às seguintes :

- Quantos produtos com preço acima de 600 foram vendidos?

- Qual a receita média das vendas?

- Existe uma diferença muito grande entre a média e a mediana das receitas?

- Qual o produto mais caro e qual o mais barato?' 

#Criando a matriz:

dados_vendas <- matrix(c(
  1230.75, 20, 24615,
  840.46, 35, 29416.10,
  110.20, 15, 1653,
  519.67, 10, 5196.70,
  650.90, 25, 16272.50

), ncol = 3, byrow = TRUE)

colnames(dados_vendas) <- c("Preco", "Quantidade", "Valor Total")
rownames (dados_vendas) <- c("Laptop", "Smart TV", "Webcam", "Microfone", "Smartwatch")

#Exibindo a matriz
dados_vendas

#Quantos produtos com preço acima de 600 foram vendidos?
dados_filtrados <- dados_vendas[dados_vendas[, 1] > 600, ]
qtd_filtrado <- sum(dados_filtrados[,  2])

qtd_total <- sum(dados_vendas[, 2]) 
resultado_porcentagem <- (qtd_filtrado / qtd_total) * 100

resultado_porcentagem

#Arrendondando com a função round
round(resultado_porcentagem)
