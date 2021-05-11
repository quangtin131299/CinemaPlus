const express = require('express');
const route = express.Router();
const gioithieuController = require("../controller/GioiThieuController");

route.use(express.static('public'));


route.get("/loadPage", gioithieuController.loadPage);




module.exports = route;