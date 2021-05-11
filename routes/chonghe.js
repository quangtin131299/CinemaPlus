const express = require('express');
const route = express.Router();
const ghephongController = require("../controller/GhePhongController");
route.use(express.static('public'));

route.get("/index",ghephongController.loadPage);


module.exports = route;