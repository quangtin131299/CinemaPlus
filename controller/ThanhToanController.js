const thanhtoanModel = require("../db/ThanhToanModel");

class ThanhToanController {
  loadPage(req, res) {
    res.render("ThanhToan/thanhtoan");
  }

  xulythanhtoan(req, res) {
    let ngaydat = req.body.vedat.ngaydat;
    let idsuat = req.body.vedat.idsuatchieu;
    let idghe = req.body.vedat.idghe;
    let idphim = req.body.vedat.idphim;
    let idkhachhang = req.body.vedat.idkhachhang;
    let idrap = req.body.vedat.idrap;
    let status = 'Đã đặt';
    let idphong = req.body.vedat.idphong;
    let seats = req.body.vedat.selectseat;

    thanhtoanModel.thanhtoan(ngaydat, idsuat, idghe, idphim, idkhachhang, idrap, status,idphong, seats).then(function(result){
        res.send("thanh công");
    }).catch(function(err){{
      console.log(err);
    }})
    // console.log(ngaydat,idsuat,idghe ,idphim,idkhachhang,idrap,status,idphong);
   
  }
}

module.exports = new ThanhToanController();
