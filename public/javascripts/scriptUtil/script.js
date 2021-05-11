window.BeforeUnloadEvent = function () {
  window.localStorage.clear();
};

$(window).ready(function () {
  let user = JSON.parse(window.localStorage.getItem("user"));
  if (user) {
    $('#loadticker').attr('href', `/ticker/yourticker?iduser=${user.ID}`);
    $("#tk").attr("href", "");
    let arrayhoten = user.HoTen.split(" ");
    let sl = arrayhoten.length;
    $("#tk").html(
      $("#tk").html() +
        `<a href="/user/loadPage">Xin chào ${arrayhoten[sl - 1]}</a><a href="/login/logout" id="logout">Logout</a></a>`
    );
  } else {
    $("#tk").attr("href", "/login/getpage");
    $("#tk").html($("#tk").html() + "Login");
  }

  if ($("#logout")) {
     $("#logout").click(function () {
        window.localStorage.removeItem('user');
        window.location.reload();
     })
  }

});


