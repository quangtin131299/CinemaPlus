const phimModel = require("../db/PhimModel")
class HomeController{

    index(req, res){
        let listPhim = [];
        phimModel.loadPhimDangChieu().then((result) => {
            listPhim = result; 
            res.render("Home/index", {listPhimDC: listPhim})
        }).catch((err) => {
            res.render("Home/index");
        });        
    }


}


module.exports = new HomeController();