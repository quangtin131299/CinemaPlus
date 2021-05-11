const conn = require("./connect");

class ThanhToanModel {
  thanhtoan(
    ngaydat,
    idsuat,
    idghe,
    idphim,
    idkhachhang,
    idrap,
    status,
    idphong,
    seats
  ) {
    return new Promise(function (resolve, reject) {
      let sqlqueryhoadon = `INSERT INTO hoadon  VALUES (NULL, '${ngaydat}', '45000', '${idkhachhang}', 'Chưa thanh toán');`;
      conn.query(sqlqueryhoadon, function (err, resulthd) {
        if (err) {
          reject(err);
          console.log(err);
        } else {
          for (let index = 0; index < seats.length; index++) {
            let sqlquery = `INSERT INTO vedat VALUES (NULL, '${ngaydat}', '${idsuat}', '${seats[index]}', '${idphim}', '${idkhachhang}', '${idrap}', '${resulthd.insertId}', '${status}', '${idphong}')`;
            conn.query(sqlquery, function (err, resultvedat) {
              if (err) {
                reject(err);
                console.log(err);
              } else {
                let sqlqueryghephong = `UPDATE ghe set ghe.TrangThai = N'Đã đặt' WHERE ghe.ID = ${seats[index]} AND ghe.ID_Phong = ${idphong}`;
                conn.query(sqlqueryghephong, function (err, result) {
                  if (err) {
                    reject(err);
                    console.log(err);
                  } else {
                    resolve(true);
                    console.log("thành công !");
                  }
                });
              }
            });
          }
        }
      });
    });
  }
}

module.exports = new ThanhToanModel();
