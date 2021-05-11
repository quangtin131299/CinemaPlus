const dangkyModel = require('../db/DangKyModel')
class DangKyController{

    getDangKy(req, res){
        res.render("DangKy/dangky");
    }

    // hoten, tk, mk, email, ngaysinh,sdt
    postDangKy(req, res){
        let hoten = req.body.txthoten;
        let tk = req.body.txttk;
        let mk = req.body.txtpass;
        let email = req.body.txtemail;
        let ngaysinh = req.body.txtngaysinh;
        let sdt = req.body.txtsdt;

        dangkyModel.dangky(hoten, tk,mk,email,ngaysinh,sdt).then(function(result){
           res.redirect("/login/getpage");
        }).catch(function(err){
           res.render("DangKy/dangky",{message: "Đăng ký thất bại"});
        });    
    }

}

module.exports = new DangKyController();

