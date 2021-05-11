const express = require('express');
const route = express.Router();
const canhanController = require("../controller/CaNhanController");

route.use(express.static('public'));

route.get("/loadPage", canhanController.loadPage);


module.exports = route
