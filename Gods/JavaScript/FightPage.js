var JSONData;
$(document).ready(function () {
    var ajax = new XMLHttpRequest();
    ajax.open("GET", "PHP/GetData.php", true);
    ajax.send();
    var lnk_Str = window.location.href;
    var link = new URL(lnk_Str);
    var zei = link.searchParams.get("zei");
    let result = zei.replaceAll("_", " ");
    const words = result.split(" ");
    console.log(words);
    $("#Title").append(words[0] + ' VS ' + words[1]);

    ajax.onreadystatechange = function () {
        var leftindex;
        var rightindex;
        if (this.readyState == 4 && this.status == 200) {
            JSONData = JSON.parse(this.responseText);
            for (var i = 0; i < JSONData.length; i++) {
                if (words[0] == JSONData[i].nume)
                    leftindex = i;
                else if (words[1] == JSONData[i].nume)
                    rightindex = i;
            }

            var pl, vl, il, pr, vr, ir;
            pl = JSONData[leftindex].putere;
            vl = JSONData[leftindex].viteza;
            il = JSONData[leftindex].inteligenta;
            pr = JSONData[rightindex].putere;
            vr = JSONData[rightindex].viteza;
            ir = JSONData[rightindex].inteligenta;

            $("#gleft").append(
                '<img src="Images/gods/' + JSONData[leftindex].nume + '.jpg" width="350" height="520"' +
                'style="margin: 10px 10px 10px 10px; border: 1px solid white; border-radius: 5px;">' +
                '<div class="GodNameCont">' +
                '<p class="GodName">' + JSONData[leftindex].nume + ' </p>' +
                '<p class="GodNickname">' + JSONData[leftindex].porecla + '</p></div>'
            );

            $("#gleftstats").append(
                'Putere:' +
                '<meter class="Meter" id="putere" min="0" max="5" value="' + pl + '"></meter>' +
                'Viteza:' +
                '<meter class="Meter" id="viteza" min="0" max="5" value="' + vl + '"></meter>' +
                'Inteligeta:' +
                '<meter class="Meter" id="inteligenta" min="0" max="5" value="' + il + '"></meter>'
            );
            $("#grightstats").append(
                '.' +
                '<meter class="Meter" id="putere" min="0" max="5" value="' + pr + '"></meter>' +
                '.' +
                '<meter class="Meter" id="viteza" min="0" max="5" value="' + vr + '"></meter>' +
                '.' +
                '<meter class="Meter" id="inteligenta" min="0" max="5" value="' + ir + '"></meter>'
            );

            $("#gright").append(
                '<img src="Images/gods/' + JSONData[rightindex].nume + '.jpg" width="350" height="520"' +
                'style="margin: 10px 10px 10px 10px; border: 1px solid white; border-radius: 5px;">' +
                '<div class="GodNameCont">' +
                '<p class="GodName">' + JSONData[rightindex].nume + ' </p>' +
                '<p class="GodNickname">' + JSONData[rightindex].porecla + '</p></div>'
            );

            var pleft = parseInt(pl) + parseInt(vl) + parseInt(il), pright = parseInt(pr) + parseInt(vr) + parseInt(ir);
            var ind;
            if (pleft > pright)
                ind = 0;
            else if (pleft < pright)
                ind = 1;
            else ind = 2;

            if (ind != 2)
                $("#scor").append(words[ind] + " castiga");
            else
                $("#scor").append("Remiza");
        }
    };

});
