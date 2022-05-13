var data;

$(document).ready(function () {

    var ajax = new XMLHttpRequest();
    ajax.open("GET", "php/unload_db.php", true);
    ajax.send();
    ajax.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            data = JSON.parse(this.responseText);
            var lnk_Str = window.location.href;
            var link = new URL(lnk_Str);
            var loc_name = link.searchParams.get("loc");
            var index = 0;
            let name = loc_name;
            let result = name.replaceAll("_", " ");
            const words = result.split(" ");
            
            for (let i = 0; i < words.length; i++) 
                words[i] = words[i][0].toUpperCase() + words[i].substr(1);
            
            
            for (let i = 0; i < words.length; i++) 
                $("#titlu").append(words[i] + " ");
            
            console.log(result);

            for (var i = 0; i < data.length; i++)
                if (loc_name == data[i].id) { index = i; break }

            $("#main").append(
                '<img class="loc_img" src="resurse/'+data[index].id+'.jpg">' + data[index].informatii);
                
        }
    };
});