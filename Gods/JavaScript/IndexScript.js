var mythology = "all";
function changeMythology(myth) {
    mythology = myth;
    Refresh();
}

var JSONData;
$(document).ready(function () {

    var ajax = new XMLHttpRequest();
    ajax.open("GET", "PHP/GetData.php", true);
    ajax.send();

    ajax.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            JSONData = JSON.parse(this.responseText);
            Refresh();
        }
    };
});

function Refresh() {
    document.getElementById("container").innerHTML = "";
    for (var i = 0; i < JSONData.length; i++) {
        if (mythology == "all")
            Append(i);
        else {
            if (JSONData[i].mitologie == mythology)
                Append(i);
        }
    }
}

function Append(i) {
    $("#container").append(
        '<a href="GodPage.html?zeu=' + JSONData[i].nume + '">' +
        '<div class="God">' +
        '<img src="Images/gods/' + JSONData[i].nume + '.jpg" width= "150" height = "220 " style="margin: 10px 10px 10px 10px; border: 1px solid white;">' +
        '<div class="GodNameCont">' +
        '<p class="GodName">' + JSONData[i].nume + '</p>' +
        '<p class="GodNickname">-' + JSONData[i].porecla + '-</p>' +
        '</div></div></a>');
}

$(document).on("keyup", "#SearchGod", function () {
    var param = $(this).val();
    param = param.toLowerCase();

    if (param != '') {
        document.getElementById("container").innerHTML = "";
        for (var i = 0; i < JSONData.length; i++) {
            var name = JSONData[i].nume.toLowerCase();
            if (name.includes(param)) {
                Append(i);
            }
        }
    }
    else Refresh();
});