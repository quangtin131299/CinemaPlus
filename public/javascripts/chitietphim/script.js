$('.thoigian').click(function () {
    if ($('#txtngaydat').val()) {
        let ngaydat = $('#txtngaydat').val();        
        let datedatve = new Date(ngaydat);
        let date = new Date();
        if (datedatve.getDate() >= date.getDate()) {
            let tickerbook = {
                ngaydat: $('#txtngaydat').val(),
                idsuatchieu: this.id,
                suatchieu: $('#' + this.id).text()
            }
            window.localStorage.setItem("ticker", JSON.stringify(tickerbook))
            return true;
        } else {
            alert("ngày đặt vé không được nhỏ hơn ngày hiện tại !");
            return false;
        }
    } else {
        alert("Bạn chưa chọn đặt ngày đặt")
        return false;
    }

})

