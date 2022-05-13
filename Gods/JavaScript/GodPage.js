var JSONData;
$(document).ready(function () {

    var ajax = new XMLHttpRequest();
    ajax.open("GET", "PHP/GetData.php", true);
    ajax.send();

    ajax.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            JSONData = JSON.parse(this.responseText);

            var lnk_Str = window.location.href;
            var link = new URL(lnk_Str);
            var zeu = link.searchParams.get("zeu");
            var index;
            for (var i = 0; i < JSONData.length; i++)
                if (zeu == JSONData[i].nume)
                    index = i;

            var Mit;
            if (JSONData[index].mitologie == "greek")
                Mit = "Mitologia greceasca";
            else if (JSONData[index].mitologie == "norse")
                Mit = "Mitologia nordica";
            else if (JSONData[index].mitologie == "egyptian")
                Mit = "Mitologia egiptului";

            $("#Title").append(Mit);
            $("#God").append('<img src="Images/gods/' + zeu + '.jpg" class="SplashArt">' +
                '<p class="Name">' + zeu + '</p>' +
                '<p class="Nickname">' + JSONData[index].porecla + '</p>' +
                '<p>' + JSONData[index].despre + '</p>'

            );
        }
    };
});