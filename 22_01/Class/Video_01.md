# MYSQL - Tipo de Dados

1. Booleanos
2. Caracteres
3. Números
4. Temporais

# 1. Booleanos
BOOL - Pode receber 1 ou 0, e é inicializado por padrão como nulo

# 2. Caracteres
**Tamanho fixo**
CHAR(5) - Permite inserir até uma quantidade fixa de caracteres e sempre ocupa todo espaço reservado

**Tamanho variável**
VARCHAR(10) - Permite inserir até uma quantidade que for definida, porém só ocupa o espaço que for preenchido

# 3. Números
**Valores Exatos Inteiros**
- Signed - permite armazenar somente valores positivos
- Unsigned - permite armazenar valores negativos e positivos
TINYINT - 0 a 255 signed ou - 128 a 127 unsigned
SMALLINT - mesma coisa porém limite maior  
MEDIUMINT - mesma coisa porém limite maior
INT - mesma coisa porém limite maior
BIGINT - mesma coisa porém limite maior

**Valores Exatos com precisão decimal**
DECIMAL - permite a quantidade máximo de números e precisão - EX: Decimal(5,2) 100.55
FLOAT/REAL - para nova versão do MYSQL 8.0 e acima, podemos porem não devemos especificar as casas decimais. Tem a precisão de 1 casa decimal 5232123.3
DOUBLE- mesma situação porém tem a precisão de 2 casas decimais 231123.23

# 4. Temporais
DATE - Armazenar valores padrão yyyy-mm-dd
TIME - Armazena alores no padrão HH:MM:SS
DATETIME - Junta DATE e TIME em um formato YYYY-MM-DD HH-MM-SS '1000-01-01 00:00:00' até '9999-12-31 23:59:59'
TIMESTAMP - Junta DATE e TIME em um formato YYYY-MM-DD HH-MM-SS além disso opera com base em fuso horário que podem ser definidos no servidor '1970-01-01 00:00:01 UTC até '2038-01-19 03:14:07' UTC.
YEAR - permite armazenar valor de um ano entre 1901 e 2155

