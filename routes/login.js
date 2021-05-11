const dangnhapController = require('../controller/DangNhapController');
const express = require('express')
var cookieParser = require('cookie-parser');
const route = express.Router();


route.use(cookieParser())
route.use(express.json())
route.use(express.urlencoded({extended: true}))
route.use(express.static('public'));

route.get("/getpage", dangnhapController.index);

route.post("/xulydangnhap", dangnhapController.postLogin);

route.get("/logout",dangnhapController.logout);

module.exports = route




