const conn = require("./connect");

class GhePhongModel {
  
  loadAllGhe(idphong) {
    return new Promise(function (resolve, reject) {
      let sqlquery = `SELECT * FROM ghe WHERE ghe.ID_Phong = ${idphong}`;
      conn.query(sqlquery, function (err, result) {
        if (err) {
          reject(err);
        } else {
          resolve(result);
        }
      });
      
    });
  }

  loadPhong(idrap, idphim, idxuat, ngay) {
    return new Promise(function (resolve, reject) {
      let sqlquery = `SELECT suatchieu.Gio,phong.ID,phong.TenPhong,phim.TenPhim,rapphim.TenRap,phim.ID as 'ID_Phim', rapphim.ID as 'ID_Rap'
                  FROM lichchieu JOIN rapphim ON lichchieu.ID_Rap = rapphim.ID JOIN phong on phong.ID_Rap = rapphim.ID JOIN phim_phong_xuat ON phim_phong_xuat.ID_Phong = phong.ID JOIN phim ON phim_phong_xuat.ID_Phim = phim.ID JOIN suatchieu ON phim_phong_xuat.ID_XuatChieu = suatchieu.ID 
                  WHERE lichchieu.Ngay = '${ngay}' AND rapphim.ID = ${idrap} AND phim_phong_xuat.ID_Phim = ${idphim} AND suatchieu.ID = ${idxuat}`;
      conn.query(sqlquery, function (err, result) {
        if (err) {
          reject(err);
        } else {
          resolve(result[0]);
        }
      });
    });
  }

  loadGhe(idphong, idrap, idphim, idxuat, ngay) {
    return new Promise(function (resolve, reject) {
      let sqlquery = `SELECT ghe.ID, phim.TenPhim, ghe.TenGhe, ghe.TrangThai,rapphim.TenRap
                  FROM lichchieu JOIN rapphim ON lichchieu.ID_Rap = rapphim.ID JOIN phong ON phong.ID_Rap = rapphim.ID JOIN ghe ON ghe.ID_Phong = phong.ID JOIN phim_phong_xuat ON phim_phong_xuat.ID_Phong = phong.ID JOIN phim ON phim_phong_xuat.ID_Phim = phim.ID JOIN suatchieu ON phim_phong_xuat.ID_XuatChieu = suatchieu.ID 
                  WHERE phim.ID = ${idphim} AND suatchieu.ID = ${idxuat} AND rapphim.ID = ${idrap} AND lichchieu.Ngay = '${ngay}' AND phong.ID = ${idphong} AND ghe.TrangThai = N'Đã đặt' `;
      conn.query(sqlquery, function (err, result) {
        if (err) {
          reject(err);
        } else {
          resolve(result);
        }
      });
    });
  }
}

module.exports = new GhePhongModel();
