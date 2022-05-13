
var JSONData;
$(document).ready(function () {
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "PHP/GetData.php", true);
    ajax.send();

    ajax.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            JSONData = JSON.parse(this.responseText);

            for (var i = 0; i < JSONData.length; i++) {
                Append("#container1", i);
                Append("#container2", i);
            }

            $('#container1').lightSlider({
                autoWidth: true,
                loop: true,
                onSliderLoad: function () {
                    $('#container1').removeClass('cS-hidden');
                }
            });

            $('#container2').lightSlider({
                autoWidth: true,
                loop: true,
                onSliderLoad: function () {
                    $('#container2').removeClass('cS-hidden');
                }
            });
        }
    };

});

function ChangeName(name, index) {
    document.getElementById(name).innerHTML = "";
    document.getElementById(name).innerHTML = JSONData[index].nume;
}

function Append(name, index) {

    if (name == "#container1") {
        $(name).append('<li class="item-a">' +
            '<div class="God" onclick="ChangeName(\'first_selection\', ' + index + ')">' +
            '<img src="Images/gods/' + JSONData[index].nume + '.jpg" class="SplashArt">' +
            '<p class="GodName">' + JSONData[index].nume + '</p>' +
            '<p class="GodNickname">-' + JSONData[index].porecla + '-</p></div></li>');
    }
    else {
        $(name).append('<li class="item-a">' +
            '<div class="God" onclick="ChangeName(\'secound_selection\', ' + index + ')">' +
            '<img src="Images/gods/' + JSONData[index].nume + '.jpg" class="SplashArt">' +
            '<p class="GodName">' + JSONData[index].nume + '</p>' +
            '<p class="GodNickname">-' + JSONData[index].porecla + '-</p></div></li>');
    }
}

function Fight() {
    var god1 = document.getElementById("first_selection").innerHTML;
    var god2 = document.getElementById("secound_selection").innerHTML;
    if (god1 != "Alege zeu" & god2 != "Alege zeu" && god1 != god2) {
        var int = god1 + '_' + god2;
        window.location.href = 'FightPage.html?zei=' + int;
    }
    else console.log("nu");

}
