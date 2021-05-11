$(document).ready(function () {
  if ($(".bbb_viewed_slider").length) {
    var viewedSlider = $(".bbb_viewed_slider");
    viewedSlider.owlCarousel({
      loop: true,
      margin: 280,
      autoplay: true,
      autoplayTimeout: 6000,
      nav: false,
      dots: false,
      responsive: {
        0: { items: 1 },
        575: { items: 2 },
        768: { items: 3 },
        991: { items: 4 },
        1199: { items: 6 },
      },
    });

    if ($(".bbb_viewed_prev").length) {
      var prev = $(".bbb_viewed_prev");
      prev.on("click", function () {
        viewedSlider.trigger("prev.owl.carousel");
      });
    }

    if ($(".bbb_viewed_next").length) {
      var next = $(".bbb_viewed_next");
      next.on("click", function () {
        viewedSlider.trigger("next.owl.carousel");
      });
    }

    // $(document).click(function (event) {
    //   if ($(event.target).closest(".modal").length) {
    //     $("#video").attr("src", "");
    //   }
    // });

    $(".imgtrailer").each(function (index, el) {
      $("#" + el.id).on("click", function () {
        $("#video").attr("src", "https://www.youtube.com/embed/" + this.id);
      });
    });

    $(".btnXemChiTiet").each(function (index, el) {
      $("#" + el.id).click(function () {
        console.log("ABC");
        window.location.replace(`/detailMovie/getdetails?id=${this.id}`);
      });
    });

    let user;
    let cookies = document.cookie.split(";");
    let sl = cookies.length;
    for (let i = 0; i < sl; i++) {
      if (cookies[i].includes("user")) {
        user = JSON.parse(decodeURIComponent(cookies[i].split("=")[1]));
      }
    }
    if(user){ 
      window.localStorage.setItem("user", JSON.stringify(user));
    }
   
  }
});
