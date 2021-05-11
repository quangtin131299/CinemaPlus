var data = $('#field-source').data('fields');
var resultfind
$('.ABC').each(function (index, el) {
   $('#' + el.id).click(function () {
      resultfind = data.find(function (element) {
         return element.ID == el.id;
      });
      console.log(resultfind);
      $("#imgCinema").attr('src', resultfind.Hinh);
      $("#txtdiachi").html(resultfind.DiaChi);
      
      map = new google.maps.Map(document.getElementById("map"), {
         center: {lat: Number(resultfind.ViDo), lng: Number(resultfind.KinhDo)},
         zoom: 18
      });
      marker = new google.maps.Marker({
         position: {lat: Number(resultfind.ViDo), lng: Number(resultfind.KinhDo)},
         map: map,
      });
   })
})

function initMap() {
   // The location of Uluru
   const uluru = { lat: 10.738058656222194, lng: 106.67789085433215 }

   // The map, centered at Uluru
   const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 18,
      center: uluru,
   });
   // The marker, positioned at Uluru
   const marker = new google.maps.Marker({
      position: uluru,
      map: map,
   });
}


