const express = require("express");
const bodyParser = require("body-parser");
const routes = require("./routes");
const token = require("./token");

const app = express();

app.use(bodyParser.json());

app.use(token, routes);

app.listen(3000, () => console.log("EXECUTANDO"));

app.use(function (err, req, res, next) {
  res.status(err.status || 500).send(`Erro, mensagem erro: ${err.message}`);
  
});
