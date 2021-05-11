const express = require('express');
const route = express.Router();
const tickerController  = require("../controller/TickerController");
const path = require("path");

route.use(express.static('public'));

route.get("/yourticker", tickerController.getYourTicker);



module.exports = route;