var album = window.location.search.substr(1);

$.ajax({
    type: 'POST',
    url: "../php-server/get_album.php",
    dataType: "json",
    data: {album: album},
    success: function (data) {
        album = JSON.parse(data.album);
        if (data.code == 200) {
            $("#album-name").append(album[0].ALBUMTITLE);
            $("#artist").append("By " + album[0].ARTISTNAME);
            $("#cover").append(
                "<img draggable='true' id='" + album[0].ALBUMID +
                "' class='cover-img' src= '../files/" + album[0].ALBUMCOVER + ".jpg' " +
                " alt = 'album-cover'>");
            $("#year").append("Released on " + album[0].ALBUMYEAR);
            $("#price").append(album[0].PRICE + "&euro;");
            $(".cover-img").on('dragstart', function () {
                event.dataTransfer.setData("text", event.target.id);
            });
        } else {
            window.location = '../t-web/index.php?error=' + data.msg;
        }
    },
    error: function () {
        window.location = '../t-web/index.php?error=' + "AJAX";
    }
});

$(document).ready(function () {
    $(".sidebar").on('dragover', function () {
        event.preventDefault();
        event.stopPropagation();
        allow_drop(event);
    });
    $("#sidebar-wishlist").on('drop', function () {
        event.preventDefault();
        event.stopPropagation();
        add_to_wishlist(event);
    });
    $("#sidebar-buy").on('drop', function () {
        event.preventDefault();
        event.stopPropagation();
        buy(event);
    });
});

function allow_drop(event) {
    event.preventDefault();
}

function add_to_wishlist(event) {
    event.preventDefault();
    var album = event.dataTransfer.getData("text");
    $.ajax({
        type: 'POST',
        url: "../php-server/add_to_wishlist.php",
        dataType: "json",
        data: {album: album},
        success: function (data) {
            if (data.code == 200) {
                $("#sidebar-wishlist").text(data.msg);
            } else {
                window.location = '../t-web/index.php?error=' + data.msg;
            }
        },
        error: function () {
            window.location = '../t-web/index.php?error=' + "AJAX";
        }
    });
    return false;
}

function buy(event) {
    event.preventDefault();
    var album = event.dataTransfer.getData("text");
    $.ajax({
        type: 'POST',
        url: "../php-server/add_to_purchased.php",
        dataType: "json",
        data: {album: album},
        success: function (data) {
            if (data.code == 200) {
                $("#sidebar-buy").text(data.msg);
            } else {
                window.location = '../t-web/index.php?error=' + data.msg;
            }
        },
        error: function () {
            window.location = '../t-web/index.php?error=' + "AJAX";
        }
    });
    return false;
}