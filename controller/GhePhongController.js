const ghephongModel = require("../db/GhePhongModel");

class GhePhongController {
  loadPage(req, res) {
    let idsuat = req.query.idsuat;
    let idrap = req.query.idrap;
    let idphim = req.query.idphim;
    ghephongModel
      .loadPhong(idrap,idphim, idsuat, "2021-03-21")
      .then(function (resultphong) {
        ghephongModel
          .loadAllGhe(resultphong.ID)
          .then(function (resultghe) {
            res.render("ChonGhe/chonghe", { phong: resultphong , ghes: resultghe});
          })
          .catch(function (err) {
            console.log(err);
          });
      })
      .catch(function (err) {
        console.log(err);
      });
  }
}

module.exports = new GhePhongController();
