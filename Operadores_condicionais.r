## Aula 3 - Operadores, estruturas condicionais e de repetição

'Suponha que estamos lidando com dados de um armazém que vende produtos eletrônicos 
e tem um estoque representado por uma matriz de preços unitários e quantidades em estoque.'

#Criando a matriz 

preco <- c(50, 100, 150, 25, 75)

qtd_estoque <- c(10, 5, 20, 30, 7)

preco_estoque <- c(preco, qtd_estoque)

matriz_estoque <- matrix(preco_estoque, ncol = 2)

rownames(matriz_estoque) <- c('Notebook', 'Tablet', 'Monitor', 'Smartphone', 'Headset')
colnames(matriz_estoque) <- c('Produto', 'Estoque')

matriz_estoque

'Com base nessa matriz, responderemos às perguntas pré-definidas neste projeto. Vamos explorar o seguinte:

- Calcular o valor total em estoque.

- Identificar produtos com estoque baixo (menos de 15 unidades).

- Classificar o valor total em estoque em alto ou baixo.

- Aplicar desconto de 10% em todos os produtos do estoque.

- Descobrir qual o produto mais vendido.'

#Calculando o valor total em estoque
total_estoque <- matriz_estoque[, 1] * matriz_estoque[,2]
total_estoque

#Adicionando uma nova coluna com os valores totais
matriz_estoque <- cbind(matriz_estoque, total_estoque)


#Identificando os produtos com menos de 15 unidades
estoque_baixo <- matriz_estoque[, 2] < 15
matriz_estoque[estoque_baixo, ]

#Classificação do estoque

total_somado <- colSums(matriz_estoque)
total_somado[3]

if(total_somado[3] > 3000) {
    paste('Total em estoque é alto. Valor total: ', total_somado[3])
} else{
    paste('Total em estoque está abaixo de 3000. Valor total: ', total_somado[3])
}

