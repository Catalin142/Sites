let slide_index = 1;
show_slides(slide_index);

function plus_slides(n) {
  show_slides(slide_index += n);
}

function current_slide(n) {
  show_slides(slide_index = n);
}

function show_slides(n) {
  let i;
  let slides = document.getElementsByClassName("slide");
  if (!($('#img_gal').is(':empty'))) {
    if (n > slides.length) { slide_index = 1 }
    if (n < 1) { slide_index = slides.length }
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slides[slide_index - 1].style.display = "block";
  }
}

const sections = document.querySelectorAll("section");
const nav_li = document.querySelectorAll("nav .container ul li");
window.addEventListener("scroll", () => {
  let current = "";
  sections.forEach((section) => {
    const section_top = section.offsetTop;
    const section_height = section.clientHeight;
    if (pageYOffset >= section_top - section_height / 3) {
      current = section.getAttribute("id");
    }
  });

  nav_li.forEach((li) => {
    li.classList.remove("active");
    if (li.classList.contains(current)) {
      li.classList.add("active");
    }
  });
});

$(document).ready(function () {

  var ajax = new XMLHttpRequest();
  ajax.open("GET", "php/car_data.php", true);
  ajax.send();
  ajax.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      data = JSON.parse(this.responseText);

      var url_string = window.location.href;
      var url = new URL(url_string);
      var param = url.searchParams.get("name");
      var index = 0;
      for (var i = 0; i < data.length; i++)
        if (param == data[i].id) { index = i; break }

      console.log(param);
      $("#desc").append(
        '<div class="title">' + data[index].nume +
        '<div class="descriere">' + data[index].info + '</div></div>');

      $("#sp").append(
        '<div class="table_elem"> Putere <h2>' + data[index].putere + 'CP</h2></div>' +
        '<div class="table_elem"> Viteza <h2>' + data[index].viteza + 'km/h</h2></div>' +
        '<div class="table_elem"> Accelerare <h2>' + data[index].accelerare + 's</h2> de la 0 - 100 km/h</div>' +
        '<div class="table_elem"> Masa <h2>' + data[index].masa + 'kg</h2></div>' +
        '<div class="table_elem"> Consum <h2>' + data[index].consum + 'l</h2>/100km</div>'
      )
      var ext = "images/presentation/" + param + "/ext.jpg";
      var int = "images/presentation/" + param + "/int.jpg";
      var spate = "images/presentation/" + param + "/spate.jpg";

      $("#img_gal").append(
        '<div class="slide fade"><img src=' + ext + ' style="width:100%"></div>' +
        '<div class="slide fade"><img src=' + spate + ' style="width:100%"></div>' +
        '<div class="slide fade"><img src=' + int + ' style="width:100%"></div>'
      )
      
      let slides = document.getElementsByClassName("slide");
      slides[0].style.display = "block";
    }
  };
});