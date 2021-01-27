# Exercise
Para os exercícios, você utilizará um dataset pequeno com alguns filmes.

Conecte-se à sua instância do MongoDB local e insira os seguintes documentos na coleção movies do banco de dados class :

{
  "title": "Batman",
  "category": [ "action", "adventure" ],
  "imdbRating": 7.6,
  "budget": 35
},
{
  "title": "Godzilla",
  "category": [ "action", "adventure", "sci-fi" ],
  "imdbRating": 6.6
},
{
  "title": "Home Alone",
  "category": [ "family", "comedy" ],
  "imdbRating": 7.4
}

Verifique se você tem três documentos na coleção.

Para cada execução, utilize o método find() para conferir as alterações nos documentos

O MongoDb possui diversas ferramentas, como, por exemplo, mongo , mongo sh , Compass e outras ferramentas de terceiros. Você pode utilizar o que achar melhor para executar as queries , o importante é realizá-las.

**Exercício 1 :** 
Altere o imdbRating para 7.7 no filme Batman .

**Exercício 2 :** 
Altere budget para 1 no filme Godzilla .

**Exercício 3 :** 
Altere budget para 15 e imdbRating para 5.5 no filme Home Alone .

**Exercício 4 :** 
Aumente em 2 o imdbRating do filme Batman .

**Exercício 5 :** 
Aumente em 5 o budget do filme Home Alone .

**Exercício 6 :** 
Multiplique por 4 o imdbRating do filme Batman .

**Exercício 7 :** 
Renomeie o campo budget para estimatedBudget do filme Batman .

**Exercício 8 :** 
Utilize o operador $min para alterar o budget para 5 do filme Home Alone .

**Exercício 9 :**
Utilize o operador $max para alterar o imdbRating para 8.6 do filme Godzilla . Além disso, altere a categoria "adventure" para "thriller" do filme Godzilla .

**Exercício 10 :** 
Utilizando o operador $currentDate , crie um campo chamado lastUpdated com o tipo timestamp no filme Home Alone .

**Exercício 11 :** 
Utilizando uma única operação, crie um campo chamado sequels e atribua a ele o valor 0 em todos os documentos.

**Exercício 12 :** 
Utilizando uma única operação, remova os campos budget e estimatedBudget em todos os documentos.

**Exercício 13 :**
Para os filmes Batman ou Home Alone , atribua a imdbRating o valor 17 , caso o valor de imdbRating seja menor que 17.

# Bônus
Copie e cole os dados abaixo no mongo shell:

use class;
db.xmen.insertMany([
  {
      "name": "Tempestade",
      "true_name": "Ororo Munroe",
      "origin": "Cidade de Nova York - Nova York",
      "occupation": "Headmistress",
      "powers": [
        "Atmocinese",
        "Hidrocinese",
        "Pirocinese",
        "Aerocinese",
        "Voo",
        "Criocinese",
        "Eletrocinese",
        "Resistência Mental",
        "Eletrólise",
        "Electromagnetismo",
        "Manipulação de Energia Eólica",
        "Potencial Mágico",
        "Combate e roubo",
        "Capacidades físicas e traços",
        "Manipulação nervosa"
        ],
      "class": "omega"
    },
    {
      "name": "Fera",
      "true_name": "Henry Phillip McCoy",
      "origin": "Dundee - Illinois",
      "occupation": "Vice-Principal",
      "powers": [
        "Intelecto nível gênio",
        "garras afiadas",
        "dentes afiados",
        "Força, agilidade,Resistência e velocidade sobre-humanas"
      ],
      "class": "unknown"
    },
    {
      "name": "Vampira",
      "true_name": "Anna Marie LeBeau",
      "origin": "Caldecott County -Mississippi",
      "occupation": "Senior Staff",
      "powers": [
        "sugar energia vital , memórias e poderes de outros mutantes através da pele"
      ],
      "class": "omega"
    },
    {
      "name": "Homem de Gelo ",
      "true_name": "Robert Louis Drake",
      "origin": "Fort Washington, Long Island, New York",
      "occupation": "Senior Staff",
      "powers": [
        "manipular a umidade do ar para transformar o vapor em gelo",
        "transformar seu corpo em gelo"
      ],
      "class": "alfa"
    },
    {
      "name": "Garota Marvel",
      "true_name": "Rachel Anne Grey-Summers",
      "origin": "Norte americana",
      "occupation": "Senior Staff",
      "powers": [
        "Telepatia",
        "Telecinese",
        "Rajadas energéticas",
        "residuos da Força Fênix"
      ],
      "class": "omega"
    },
    {
      "name": "Estrela Polar",
      "true_name": "Jean-Paul",
      "origin": "Canadá",
      "occupation": "Senior Staff",
      "powers": [
        "Vôo",
        "Durabilidade",
        "Super Velocidade",
        "Geração de luz",
        "Equilíbrio",
        "agilidade",
        "reflexos acima do normal",
        "Força"
      ],
      "class": "unknown"
    },
    {
      "name": "Firestar",
      "true_name": "Angelica 'Angel' Jones",
      "origin": "americana",
      "occupation": "Senior Staff",
      "powers": [
        "Capacidade de explorar o campo eletromagnético da Terra"
      ],
      "class": "unknown"
    },
    {
      "name": "Câmara",
      "true_name": "Jonothon 'Jono' Evan Starsmore",
      "origin": "britânico",
      "occupation": "Junior Staff",
      "powers": [
        "Poderosa energia psicocinética expelida por seu tórax",
        "Comunicação telepatica"
      ],
      "class": "unknown"
    },
    {
      "name": "Frenesi",
      "true_name": "Joanna Cargill",
      "origin": "americana",
      "occupation": "Junior Staff",
      "powers": [
        "Pele Rígida Como Aço", 
        "Super-Força"
      ],
      "class": "unknown"
    },
    {
      "name": "Karma",
      "true_name": "Xi'an Coy Manh",
      "origin": "the central highlands of Vietnam",
      "occupation": "Junior Staff",
      "powers": [
        "Posse mental",
        "Posse remota",
        "Elenco de ilusão",
        "Escudo psíquico",
        "Análise sensorial",
        "Controle mental"
      ],
      "class": "unknown"
    },
    {
      "name": "Escalpo",
      "true_name": "Paige Elisabeth Guthrie",
      "origin": "Americana, Krakoana",
      "occupation": "Junior Staff",
      "powers": [
        "Força Sobre-Humana",
        "Velocidade Sobre-Humana",
        "Durabilidade sobre-humana",
        "Projeção de chama (forma magma)",
        "Elasticidade de absorção de impacto",
        "Talentos anfíbios"
      ],
      "class": "unknown"
    },
    {
      "name": "Rapina",
      "true_name": "Ava'Dara Naganandin",
      "origin": "Chandilar,Shi'ar",
      "occupation": "Junior Staff",
      "powers": [
        "Força Sobre-Humana",
        "Vigor Sobre-Humano"
      ],
      "class": "unknown"
    },
    {
      "name": "Deathlok",
      "true_name": "Luther Manning",
      "origin": "unknown",
      "occupation": "Adjunct Staff/Campus Guard",
      "powers": [
        "Aprimoramentos cibernéticos que garantem velocidade, força, durabilidade e reflexos sobre-humanos "
      ],
      "class": "unknown"
    },
    {
      "name": "Doop",
      "true_name": "Doop",
      "origin": "EUA",
      "occupation": "Adjunct Staff",
      "powers": [
        "Vôo",
        "Fator de cicatrização acelerado Força",
        "durabilidade sobre-humana",
        "Maleabilidade física",
        "Capacidade de replicar objetos físicos",
        "Vazio extra-dimensional dentro do corpo que pode armazenar objetos e pessoas"
      ],
      "class": "unknown"
    },
    {
      "name": "Colossus",
      "true_name": "Piotr 'Peter' Nikolaievitch",
      "origin": "Lake Baikal, Siberia",
      "occupation": "Member",
      "powers": [
        "Transmutação em Aço Orgânico",
        "Super-Força",
        "Resistência Sobre-Humana",
        "Super-Vigor",
        "Agilidade e Velocidade Aumentadas",
        "Incapacidade de Sangrar"
      ],
      "class": "100"
    },
    {
      "name": "Noturno",
      "true_name": "Kurt Wagner",
      "origin":"Bavaria,Alemanha",
      "occupation": "Member",
      "powers": [
        "Teletransporte",
        "Super Agilidade",
        "Aderência física",
        "Habilidade de fundir-se com as sombras"
      ],
      "class": "gama"
  },
  {
      "name": "Kid Omega",
      "true_name": "Quentin Quire",
      "origin":"unknow",
      "occupation": "Member",
      "powers": [
        "Telepatia nivel-omega",
        "Telecinese",
        "Intelecto Genial"
      ],
      "class": "omega"
  },
  {
      "name": "Fada",
      "true_name": "Megan Gwynn",
      "origin":"Abergylid,Pais de Gales",
      "occupation": "Member",
      "powers": [
        "Asas",
        "Poeira Alucinógena",
        "Teletransporte",
        "Magia"
      ],
      "class": "gama"
  },
  {
      "name": "Armadura",
      "true_name": "Hisako Ichiki",
      "origin":"Abergylid,Pais de Gales",
      "occupation": "Member",
      "powers": ["Armadura Psionica"],
      "class": "unknown"
  },
  {
      "name": "Jubileu",
      "true_name": "Jubilation Lee",
      "origin":"Beverly Hills, California",
      "occupation": "Member",
      "powers": [
        "Energia Plasmatica",
        "Imunidade Telepatica"
      ],
      "class": "unknown"
  },
  {
      "name": "Kavita Rao",
      "true_name": "Kavita Rao",
      "origin":"Calcuta,India",
      "occupation": "Medica Residente",
      "powers": [],
      "class": "unknown"
  },
  {
      "name": "Cecilia Reyes",
      "true_name": "Cecilia Reyes",
      "origin":"Bronx,Nova York",
      "occupation": "Medica Residente",
      "powers": [
        "Campo de força"
      ],
      "class": "unknown"
  },
  {
      "name": ["Anjo", "Archangel"],
      "true_name": "Warren Kenneth Worthington III",
      "origin":"Centerport, Nova York",
      "occupation": ["Assistente", "Recrutador"],
      "powers": [
        "Campo de força"
      ],
      "class": "Beta"
  },
  {
      "name": "Homem Aranha",
      "true_name": "Peter Parker",
      "origin":"Queens, Nova York",
      "occupation": ["Conselheiro","Corpo Adjunto"],
      "powers": [
        "Força Sobrehumana",
        "Sensor-Aranha",
        "Aderencia Fisica"
      ],
      "class": "unknown"
  }
]);

As informações acima são sobre a Escola Jean Grey de Ensino Superior. Para todas as alterações realizadas, você deve sempre atualizar ou adicionar o campo lastUpdate , que armazena a data da última alteração com o tipo timestamp . Os exercícios devem ser realizados na ordem.

**Exercício 14 :** 
Remova o campo class dos documentos que possuem esse campo com o valor unknown .

**Exercício 15 :** 
Produza uma query que renomeie os campos de name para hero_name , e de true_name para full_name ; adicione o campo power com valor 100, em todos os documentos.

**Exercício 16 :** 
Produza uma query onde os mutantes class ômega ou gama passam a ter seu poder de 500 somente se seu poder for menor que 500 .

**Exercício 17 :** 
Produza uma query onde os mutantes class gama passam a ter seu poder de 300 somente se seu poder for maior que 300 .

**Exercício 18 :** 
Decremente em 100 o poder dos mutantes não contêm a propriedade class .

**Exercício 19 :** 
Em apenas uma query adicione o campo area com o seguinte array como valor: [ "Students Room" ] a todos os mutantes que são Senior Staff que tenham poder acima de 100 e para todos os Junior Staff com poder acima de 200.

**Exercício 20 :**
Em apenas uma query, adicione o campo áreas com [ "outside" ] a todos os Junior Staff que não tenham o campo area definido.