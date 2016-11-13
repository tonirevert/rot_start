function load_users_get() {
    //var jqxhr = $.get( "modules/users/controller/controller_users.class.php?load=true", function(data) {
    var jqxhr = $.get( "index.php?module=users&function=load_users&load=true", function(data) {
        //alert( data );
        var json = JSON.parse(data);
        pintar_user(json);
        //alert( "success" );
    }).done(function() {
        //alert( "second success" );
    }).fail(function() {
        //alert( "error" );
    }).always(function() {
        //alert( "finished" );
    });

    jqxhr.always(function() {
        //alert( "second finished" );
    });
}

$(document).ready(function () {
    load_users_get();
});

function pintar_user(data) {
    //alert(data.user.avatar);
    var content = document.getElementById("content");
    var div_user = document.createElement("div");
    var parrafo = document.createElement("p");

    var msje = document.createElement("div");
    msje.innerHTML= "msje = ";
    msje.innerHTML+= data.msje;

    var email = document.createElement("div");
    email.innerHTML= "email = ";
    email.innerHTML+= data.user.email;

    var date_birthday = document.createElement("div");
    date_birthday.innerHTML= "date_birthday = ";
    date_birthday.innerHTML+= data.user.date_birthday;

    var avatar = document.createElement("div");
    avatar.innerHTML= "avatar = ";
    avatar.innerHTML+= data.user.avatar;

    //var cad = data.user.avatar;
    //var cad = cad.toLowerCase();
    //var img = document.createElement("img");
    //var html = '<img src="'+cad+'" height="75" width="75"> ';
    //img.innerHTML = html;
    //alert(html);

    div_user.appendChild(parrafo);
    parrafo.appendChild(msje);
    parrafo.appendChild(email);
    parrafo.appendChild(avatar);
    parrafo.appendChild(date_birthday);


    content.appendChild(div_user);
    //content.appendChild(img);
}
