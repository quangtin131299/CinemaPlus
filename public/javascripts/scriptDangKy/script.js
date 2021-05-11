$("#btnsubmit").click(function () {
  let isfail = false;
  let hoten = $("input[name=txthoten]").val();
  let tk = $("input[name=txttk]").val();
  let mk = $("input[name=txtpass]").val();
  let mkvert = $("input[name=txtpassverti]").val();
  let email = $("input[name=txtemail]").val();
  let ngaysinh = $("input[name=txtngaysinh]").val();
  let sdt = $("input[name=txtsdt]").val();

  if (!hoten) {
    let text = "Họ tên không được bỏ trống";
    $('#spantbht').text(text);
    $('#spantbht').css('color','red');
    $('input[name=txthoten]').css('border', '2px solid red')
    isfail = true;
  }

  if (!hoten) {
    let text = "Họ tên không được bỏ trống";
    $('#spantbht').text(text);
    $('#spantbht').css('color','red');
    $('input[name=txthoten]').css('border', '2px solid red')
    isfail = true;
  }

  if(!tk){
    let text = "Tài khoản không được bỏ trống";
    $('#spantk').text(text);
    $('#spantk').css('color','red');
    $('input[name=txttk]').css('border', '2px solid red')
    isfail = true;
  }

  if(!mk){
    let text = "Mật khẩu không được bỏ trống";
    $('#spantpass').text(text);
    $('#spantpass').css('color','red');
    $('input[name=txtpass]').css('border', '2px solid red')
    isfail = true;
  }

  if(!mkvert){
    let text = "Mật khẩu không được bỏ trống";
    $('#spantpass').text(text);
    $('#spantpass').css('color','red');
    $('input[name=txtpass]').css('border', '2px solid red')
    isfail = true;
  }

  if(mkvert != mk){
    let text = "Mật khẩu không không khớp";
    $('#spanpassverti').text(text);
    $('#spanpassverti').css('color','red');
    $('input[name=txtpassverti]').css('border', '2px solid red')
    isfail = true;
  }

  if(!email){
    let text = "Email không được bỏ trống";
    $('#spanemail').text(text);
    $('#spanemail').css('color','red');
    $('input[name=txtemail]').css('border', '2px solid red')
    isfail = true;
  }

  if(!ngaysinh){
    let text = "Ngày sinh không được bỏ trống";
    $('#spanngaysinh').text(text);
    $('#spanngaysinh').css('color','red');
    $('input[name=txtngaysinh]').css('border', '2px solid red')
    isfail = true;
  }

  if(!sdt){
    let text = "Số điện thoại không được bỏ trống";
    $('#spansdt').text(text);
    $('#spansdt').css('color','red');
    $('input[name=txtsdt]').css('border', '2px solid red')
    isfail = true;
  }

  if(isfail){
    return false;
  }else{
    return true;
  }

});
