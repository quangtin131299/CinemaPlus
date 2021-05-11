const phimModel = require("../db/PhimModel");

class PhimController {
  getChiTietPhim(req, res) {
    let idphim = req.query.id;
    phimModel
      .loadChiTietPhim(idphim)
      .then(function (result) {
        let resultsc = phimModel.getSuatChieu(idphim, "2021-03-21");
        resultsc.then(function (resultscallrap) {
          res.render("Phim/chitietphim", {
            phimchitiet: result,
            listsc: resultscallrap,
          });
        });
      })
      .catch(function (err) {
        res.render("Phim/chitietphim");
      });
  }
}

module.exports = new PhimController();
