const dangkyController = require('../controller/DangKyController')
const express = require('express')
const route = express.Router();

route.use(express.json())
route.use(express.urlencoded({extended: true}))
route.use(express.static('public'));


route.get("/getdangky", dangkyController.getDangKy);
route.post("/xulydangky", dangkyController.postDangKy);


module.exports = route;
