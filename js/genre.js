var genre = window.location.search.substr(1);
$.ajax({
    type: 'POST',
    url: "../php-server/get_by_genre.php",
    dataType: "json",
    data: {genre: genre},
    success: function (data) {
        if (data.code == 200) {
            var albums = JSON.parse(data.albums);
            $("#genre").text(albums[0].GENRENAME);
            load_albums(albums);
        } else {
            window.location = '../t-web/index.php?error=' + data.msg;
        }
    },
    error: function () {
        window.location = '../t-web/index.php?error=' + "AJAX";
    }
});

function load_albums(albums) {
    for (var i = 0; i < albums.length; i++) {
        $("#product-grid").append("<li class='item media'>"
            + "<img id='" + albums[i].ALBUMID + "'"
            + " class='item-image mr-3' alt='" + albums[i].ALBUMTITLE + "'"
            + " src='../files/" + albums[i].ALBUMCOVER + ".jpg'>"
            + "<div class='media-body'> <h5 class='mt-0 mb-1 description'>" + albums[i].ALBUMTITLE
            + "</h5>" + albums[i].ARTISTNAME + "</div>"
            + "<div class='price'>" + albums[i].PRICE + "&euro;</div>");
    }
    $(".item-image").bind('click', function () {
        window.location = '../php-views/album.php?' + this.id;
    });
}