const conn = require("./connect");
const md5 = require("md5");

class LoginModel {

  login(username, password) {
    return new Promise(function (resolve, reject) {
      password = md5(password);
      let query = `select * from khachhang where khachhang.Account = ? and khachhang.Password = ?`;
      conn.query(query, [username, password], function (err, result) {
        if (err) {     
            reject(false)
        } else {
            if(result.length != 0){
                resolve(result[0])
            }else{
                reject(false)
            }
        }
      });
    });
  }
}

module.exports = new LoginModel();
