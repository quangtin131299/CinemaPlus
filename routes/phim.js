const express = require('express');
const route = express.Router();
const phimController = require("../controller/PhimController");
const path = require("path");

route.use(express.static('public'));

route.get("/getdetails", phimController.getChiTietPhim);




module.exports = route;