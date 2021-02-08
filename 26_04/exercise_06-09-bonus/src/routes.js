const express = require("express");

const routes = express.Router();

const getRequest = require("./requests/getRequest.js");

const postRequest = require("./requests/postRequest.js");

routes.get('/', getRequest.message);

routes.get('/simpsons', getRequest.read);

routes.get('/simpsons/:id', getRequest.readID);

routes.post('/simpsons/register', postRequest.write);

routes.get('/:Error', getRequest.error);

module.exports = routes;
