const conn = require('./connect')


class TickerModel {

    getYourTicker(idkhachhang) {
        return new Promise(function (resolve, reject) {
            let queryTicker = `SELECT phong.TenPhong, vedat.Status, rapphim.DiaChi, phim.Hinh, phim.ThoiGian, vedat.ID, rapphim.TenRap, phim.TenPhim , DATE_FORMAT(vedat.NgayDat, '%d/%m/%Y') as NgayDat, ghe.TenGhe, suatchieu.Gio
                                FROM vedat JOIN phim ON phim.ID = vedat.ID_Phim JOIN suatchieu ON suatchieu.ID = vedat.ID_Suat JOIN ghe on ghe.ID = vedat.ID_Ghe JOIN khachhang ON khachhang.ID = vedat.ID_KhachHang JOIN  rapphim ON rapphim.ID = vedat.ID_Rap JOIN phong ON phong.ID = vedat.ID_Phong
                                WHERE vedat.Status = N'Đã đặt' AND khachhang.ID = ${idkhachhang}`
            conn.query(queryTicker, function (err, result) {
                if(err){
                    reject(err);
                }else{
                    resolve(result);
                }
            })
        })

    }
}


module.exports = new TickerModel();


// suatchieu.Gio >= '${thoigianhientai}' AND vedat.NgayDat >=  DATE('${ngayhientai}') AND