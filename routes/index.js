const home = require("./home");
const login = require("./login");
const dk = require("./dangky");
const ticker = require("./ticker");
const phim = require("./phim");
const cinema = require("./cinema");
const chonghe = require("./chonghe");
const thanhtoan = require('./thanhtoan');
const canhan = require("./canhan");
const gioithieu = require("./gioithieu");


function route(app){
    app.use("/", home)
    // app.use("/home", home)

    //Login
    app.use("/login", login)
    
    //Đăng ký
    app.use("/dangky", dk);

    app.use("/ticker", ticker);

    app.use("/detailMovie", phim);

    app.use("/cinema", cinema);

    app.use("/chonghe", chonghe);

    app.use("/thanhtoan", thanhtoan);

    app.use("/user",canhan);
    
    app.use("/gioithieu", gioithieu);

}

module.exports = route;