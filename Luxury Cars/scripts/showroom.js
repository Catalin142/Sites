var page_index = 0;
const max_elements_on_page = 12;
var data;

$(document).ready(function () {

    var ajax = new XMLHttpRequest();
    ajax.open("GET", "php/car_data.php", true);
    ajax.send();

    ajax.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            data = JSON.parse(this.responseText);
            update();
        }
    };
});

function update() {
    document.getElementById("container").innerHTML = "";
    for (var i = page_index * max_elements_on_page; i < (page_index + 1) * max_elements_on_page; i++) {
        $("#container").append(
            '<a href="car_presentation.html?name=' + data[i].id + '">' +
            '<div class="car_container">' +
            '<img src="images/cars/' + data[i].id + '.png" width= "350" height = "200">' +
            '<div class="car_name_container">' +
            '<p class="car_name">' + data[i].nume + '</p>' +
            '</div></div></a>');
    }
}


function plus_slides(n) {
    page_index += n;
    if (page_index < 0)
        page_index = data.length / max_elements_on_page - 1;
    else if (page_index > data.length / max_elements_on_page)
        page_index = 0;

    page_index = Math.ceil(page_index);
    update();
}