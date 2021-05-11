let user = JSON.parse(window.localStorage.getItem("user"));
if(user){
  $(".labelUser").text(user.HoTen);
}

