$.ajax({
    type: "GET",
    url: "../php-server/get_genres.php",
    dataType: "json",
    success: function (data) {
        if (data.code == 200) {
            var genres = JSON.parse(data.genres);
            load_genres(genres);
        } else {
            window.location = '../t-web/index.php?error=' + data.msg;
        }
    },
    error: function () {
        window.location = '../t-web/index.php?error=' + "AJAX";
    }
});

function load_genres(genres) {
    for (var i = 0; i < genres.length; i++) {
        $("#genres-menu").append(
            "<a class = 'genre dropdown-item' id = '"
            + genres[i].GENREID
            + "'>" + genres[i].GENRENAME + "</a>");
    }
    $(".genre").bind('click', function () {
        window.location = '../php-views/genre.php?' + this.id;
    });
}