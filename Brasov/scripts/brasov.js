$(document).ready(function () {
    $('map').imageMapResize();

    var ajax = new XMLHttpRequest();
    ajax.open("GET", "php/hotel.php", true);
    ajax.send();
    ajax.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            data = JSON.parse(this.responseText);
            for (var i = 0; i < data.length; i++) {
                $("#sidemenu").append('<a href = "' + data[i].link + '" target="_blank">' +
                    data[i].nume +
                    '<img src="resurse/' + data[i].nume + '.jpg" class="hotel"></a>');
            }

        }
    }

});

var opened = false;
$(document).on('click', function (event) {
    var $target = $(event.target);
    if (!$target.closest('#sidemenu').length && opened)
        closeNav();
});

const transition = document.querySelector('#sidemenu');
transition.ontransitionend = () => {
    if (document.getElementById("sidemenu").style.width == "300px")
        opened = true;
};


function changeLoc(loc) {
    document.getElementById("loc").innerHTML = '-' + loc + '-';
}

function openNav() {
    document.getElementById("sidemenu").style.width = "300px";
}

function closeNav() {
    document.getElementById("sidemenu").style.width = "0px";
    opened = false;
}