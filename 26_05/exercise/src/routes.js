const express = require("express");

const routes = express.Router();

const getRequest = require("./requests/getRequest");

routes.get('/ping', getRequest.message);

module.exports = routes;