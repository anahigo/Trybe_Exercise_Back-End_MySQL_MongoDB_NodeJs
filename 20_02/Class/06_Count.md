# Contando resultados com o COUNT
Um dos principais objetivos de se usar um banco de dados é responder a perguntas como: "Que quantidade de um certo tipo de dados existe na tabela?". Ou, em um caso mais próximo ao nosso: "Quantas pessoas temos cadastradas no sistema?". Ou ainda: "Em quantos estados temos clientes?".

Vamos entender melhor isso assistindo a este vídeo:

- Vídeo Trybe

Nosso kit de ferramentas só está crescendo! Imagine que cada comando que você for aprendendo é como se fosse um novo acessório para o seu dia a dia.

Percebeu que você pode usar o COUNT de maneiras bem criativas, certo? Legal, então vamos pensar no seguinte cenário:

Essa é a tabela staff do banco de dados sakila . Como você poderia responder às seguintes questões?
1.Quantas senhas temos cadastradas nessa tabela?

2.Quantas pessoas temos no total trabalhando para nossa empresa?

3.Quantas fotos temos cadastradas nessa tabela?

Até agora, trabalhamos principalmente com tabelas que têm poucas linhas de resultados (média de 200), e até aí tudo bem. Porém, em muitos cenários reais, você pode se deparar com milhares ou até centenas de milhares de resultados, e é aqui que vamos LIMIT ar elas!