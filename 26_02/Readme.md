# Exercise
**Exercício 1 :** 
Crie uma função que retorna uma promise.

1.1 - Essa função deve receber três parâmetros, fazendo o tratamento de erro caso algum dos parâmetros não seja um número.

1.2 - Caso algum dos parâmetros não seja do tipo Number , rejeite a promise e imprima na tela a frase "Digite apenas números".

1.3 - Caso todos os parâmetros sejam do tipo Number , você deve somar os dois primeiros.

1.4 - Depois, pegue o resultado da soma e multiplique pelo terceiro parâmetro, e caso seja menor que 50, rejeite a promise com a mensagem "Valor muito baixo".

1.5 - Caso contrário, aceite a promise, imprimindo o resultado da multiplicação na tela.

**Exercício 2 :** 
Agora, pegue a função do exercício 1 e refatore ela para async/await .

2.1 -Sua função tem que funcionar exatamente igual à do exercício 1, mas você não pode utilizar nenhum .then em seu código.

Para cada exercício abaixo, escreva o script primeiro utilizando callbacks, depois promises e, por último, async/await.

**Exercício 3 :** 
Crie um script que, sem utilizar módulos de terceiros:

DICA : Leia sobre o módulo readline do node .

3.1 -Pergunte ao usuário qual arquivo deseja ler.

3.2 -Leia o arquivo indicado (Não se esqueça de realizar tratamento de erros caso o usuário informe um arquivo que não existe).

3.3 -Escreva na tela o conteúdo do arquivo e a quantidade de bytes.

**Exercício 4 :** 
Crie um script que, sem utilizar módulos de terceiros, substitua uma palavra por outra em um arquivo escolhido pelo usuário com o seguinte fluxo:

DICA : Leia sobre o módulo readline do node .

4.1 - Perguntar ao usuário qual arquivo deseja utilizar.

4.2 - Ler o arquivo (Não se esqueça de realizar tratamento de erros caso o usuário informe um arquivo que não exista).

4.3 - Solicitar a palavra a ser substituída.

4.4 - Solicitar a nova palavra, que deve substituir a palavra anterior.

4.5 - Mostrar o novo conteúdo do arquivo e realizar a substituição.

4.6 - Perguntar o nome do arquivo de destino.

4.7 - Salvar o novo arquivo no caminho de destino (caso o usuário informe um arquivo já existente, confirmar antes de sobrescrever).

Dica: Utilize a classe RegExp do JS para substituir todas as ocorrências da palavra com replace(new RegExp(palavra, 'g'), novaPalavra) .
