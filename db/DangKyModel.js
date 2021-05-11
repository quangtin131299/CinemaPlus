const conn = require("./connect");
const md5 = require("md5");

class DangKyModel {
  dangky(hoten, tk, mk, email, ngaysinh, sdt) {
    return new Promise(function (resolve, reject) {
      mk = md5(mk);
      let querydk = `INSERT INTO khachhang VALUES (NULL, ?, ?,?,?,?,?)`;
      conn.query(
        querydk,
        [hoten, email, ngaysinh, sdt, tk, mk],
        function (err, result) {
          if (err) {
            console.log(err);
            reject(false);
          } else {
            if (result) {
              resolve(true);
            }else{
              reject(false);
            }
          }
        }
      );
    });
  }
}

module.exports = new DangKyModel();
