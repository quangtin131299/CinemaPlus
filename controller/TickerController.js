const tickerModel = require('../db/TickerModel');


class Ticker{
    getYourTicker(req, res){
        let iduser = req.query.iduser;

        tickerModel.getYourTicker(iduser).then(function(result){
            console.log(result);
            res.render("Ticker/yourticker", {listTicker: result});
        }).catch(function(err){
            res.render("Ticker/yourticker")
        })
        
    }
}


module.exports = new Ticker();