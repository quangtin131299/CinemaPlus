const rapModel = require("./RapModel");
const conn = require("./connect");


class PhimModel {
  loadPhimDangChieu() {
    return new Promise(function (resolve, reject) {
      let sqlquery = `SELECT phim.ID ,phim.TenPhim, phim.ThoiGian ,phim.Hinh, phim.TrangThai, phim.Trailer from phim WHERE phim.TrangThai = N'đang chiếu'`;
      conn.query(sqlquery, function (err, result) {
        if (err) {
          reject(err);
        } else {
          resolve(result);
        }
      });
    });
  }

  loadChiTietPhim(idphim) {
    return new Promise(function (resolve, reject) {
      let sqlquery = `SELECT phim.ID, phim.TenPhim, phim.Trailer,phim.Hinh, phim.ThoiGian, loaiphim.TenLoai, phim_loaiphim.MoTa, phim_loaiphim.NgayKhoiChieu 
      from phim JOIN phim_loaiphim ON phim.ID = phim_loaiphim.ID_Phim JOIN loaiphim ON loaiphim.ID = phim_loaiphim.ID_Loai 
      WHERE phim.ID = ${idphim} AND phim.TrangThai = N'đang chiếu'`;

      conn.query(sqlquery, function (err, result) {
        if (err) {
          reject(err);
        } else {
          let temptenphim = "";
          let mangkq = [];
          for (let i = 0; i < result.length; i++) {
            if (result[i].TenPhim !== temptenphim) {
              for (let j = i + 1; j < result.length; j++) {
                if (result[j].TenPhim === result[i].TenPhim) {
                  result[i].TenLoai += ", " + result[j].TenLoai;
                }
              }
              temptenphim = result[i].TenPhim;
              mangkq.push(result[i]);
            }
          }

          resolve(mangkq[0]);
        }
      });
    });
  }

  /**
   * 
   * Lấy suất chiếu toàn rạp
   * 
   * @param  idphim 
   * @param  ngayhientai 
   * @returns 
   */

  async getSuatChieu(idphim, ngayhientai) {
    let rapresult = await rapModel.loadALLRap();
    let sl = rapresult.length;
    let arrayresult = [];
    // tên rạp đã duyệt
    let tenraptemp = "";
    for (let i = 0; i < sl; i++) {
      if (rapresult[i].TenRap !== tenraptemp) {
        let temp = await this.getSCforRap(
          rapresult[i].ID,
          idphim,
          ngayhientai
        );
        if (temp) {
          rapresult[i].Gio = temp;
          arrayresult.push(rapresult[i]);
        }
      }
    }
    return arrayresult;
  }

  /** 
   * Lấy suất chiếu của một rạp
   * 
   * @param idrap
   * @param idphim
   * @param ngayhientai
   * @returns {void}
   * 
   */
  getSCforRap(idrap, idphim, ngayhientai) {
    return new Promise(function (resolve, reject) {
      let sqlquery = `SELECT phim_phong_xuat.Ngay, suatchieu.ID, suatchieu.Gio
      from phim_phong_xuat JOIN suatchieu ON phim_phong_xuat.ID_XuatChieu = suatchieu.ID JOIN lichchieu on lichchieu.ID = suatchieu.ID_LichChieu JOIN rapphim on rapphim.ID = lichchieu.ID_Rap JOIN phim ON phim_phong_xuat.ID_Phim = phim.ID
      WHERE rapphim.ID = ${idrap} AND phim.ID = ${idphim} AND phim_phong_xuat.Ngay = '${ngayhientai}'`;
      conn.query(sqlquery, function (err, resultsc) {
        if (err) {
          console.log(err);
        } else {
          resolve(resultsc);
        }
      });
    });
  }
}

module.exports = new PhimModel();
