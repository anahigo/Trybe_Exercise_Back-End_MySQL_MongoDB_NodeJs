const express = require("express");
const routes = require("./routes");
const bodyParser = require("body-parser");

const app = express();

//app.use(express.json()); obsoleto

app.use(bodyParser.json());

app.use(routes);

app.listen(3000, () => console.log("EXECUTANDO"));

app.use(function (err, req, res, next) {
  res.status(500).send(`Erro, mensagem erro: ${err.message}`);
});