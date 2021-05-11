class GioiThieuController{
    loadPage(req, res){
        res.render("GioiThieu/gioithieu");
    }
}

module.exports = new GioiThieuController();