class CaNhanController {
  loadPage(req, res) {
    res.render("CaNhan/canhan");
  }
}


module.exports = new CaNhanController();
