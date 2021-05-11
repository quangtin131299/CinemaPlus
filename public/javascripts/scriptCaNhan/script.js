let user = JSON.parse(window.localStorage.getItem("user"));
if (user) {
  $(".hoten").text(user.HoTen);
  $("#email").text(user.Email);
  $("#sdt").text(user.SDT);
}

$("#btnthaydoi").click(function () {
  $("#container-tt").css("display", "none");
  $("#container-edit").css("display", "block");
});
$("#btnhuybo").click(function () {
  $("#container-tt").css("display", "block");
  $("#container-edit").css("display", "none");
});
