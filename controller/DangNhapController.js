const loginModel = require("../db/LoginModel");


class DangNhapController {
  index(req, res) {
    res.render("Login/login");
  }

  postLogin(req, res) {
    let username = req.body.txtusername;
    let password = req.body.txtpassword;

    loginModel
      .login(username, password)
      .then(function (result) {
        res.cookie('user', JSON.stringify(result));
        res.redirect("/");
      })
      .catch(function (err) {
        res.render("Login/login", { message: "Đăng nhập thất bại" });
      });
  }


  logout(req ,res){
    let user = req.cookies.user;
    res.cookie('user', user, {maxAge: 0})
    res.redirect("/");
  }
}

module.exports = new DangNhapController();
