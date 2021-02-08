const express = require("express");

const routes = express.Router();

const getRequest = require("./requests/getRequest");

const postRequest = require("./requests/postRequest");

const putRequest = require("./requests/putRequest");

routes.get('/ping', getRequest.message);

routes.post('/hello', postRequest.postUser);

routes.put('/hello', postRequest.postUser);

routes.put('/hello/:name/:age', putRequest.editUser);

module.exports = routes;