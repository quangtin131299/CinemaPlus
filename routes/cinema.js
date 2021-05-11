const express = require('express');
const route = express.Router();
const rapController = require("../controller/RapController");

route.use(express.static('public'));

route.get("/getCinema", rapController.loadRap);


module.exports = route;
