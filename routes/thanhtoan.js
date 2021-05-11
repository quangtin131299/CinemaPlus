const express = require('express');
const route = express.Router();
const thanhtoanController = require("../controller/ThanhToanController");

route.use(express.json())
route.use(express.urlencoded({extended: true}))
route.use(express.static("public"))

route.get("/loadPage", thanhtoanController.loadPage);

route.post("/xulythanhtoan", thanhtoanController.xulythanhtoan);


module.exports = route;


