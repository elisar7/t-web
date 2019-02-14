$(document).ready(function () {
    $.ajax({
        type: 'GET',
        url: "../php-server/get_wishlist.php",
        dataType: "json",
        success: function (data) {
            if (data.code == 200) {
                var wishlist = JSON.parse(data.wishlist);
                get_wishlist(wishlist);
            } else {
                window.location = '../t-web/index.php?error=' + data.msg;
            }
        },
        error: function () {
            window.location = '../t-web/index.php?error=' + "AJAX";
        }
    });
});

function get_wishlist(wishlist) {
    $("#wishlist").html("");
    for (var i = 0; i < wishlist.length; i++) {
        $("#wishlist").append("<li class='item media'>"
            + "<img id='" + wishlist[i].ALBUMID + "'"
            + " class='item-image mr-3' alt='" + wishlist[i].ALBUMTITLE + "'"
            + " src='../files/" + wishlist[i].ALBUMCOVER + ".jpg'>"
            + "<div class='media-body'> <h5 class='mt-0 mb-1 description'>" + wishlist[i].ALBUMTITLE
            + "</h5>" + wishlist[i].ARTISTNAME + "</div>"
            + "<button class='deleteWishlist' id='" + wishlist[i].ALBUMID
            + "'>Delete</button>");
    }
    $(".item-image").bind('click', function () {
        window.location = '../php-views/album.php?' + this.id;
    });
    $(".deleteWishlist").bind('click', function () {
        delete_from_wishlist(this.id);
    })
}

function delete_from_wishlist(album) {
    $.ajax({
        type: 'POST',
        url: "../php-server/delete_from_wishlist.php",
        dataType: "json",
        data: {album: album},
        success: function (data) {
            if (data.code == 200) {
                var wishlist = JSON.parse(data.wishlist);
                get_wishlist(wishlist);
                $("#feedback").text("Item deleted from wishlist");
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