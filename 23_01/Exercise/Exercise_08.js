// # Exercício 8 :
// Conte quantos livros existem com o status "PUBLISH" .

db.Books.count(
    { status: "PUBLISH" }
)