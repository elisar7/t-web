$(document).ready(function () {
    $.ajax({
        type: 'GET',
        url: "../php-server/get_purchased.php",
        dataType: "json",
        success: function (data) {
            if (data.code == 200) {
                var purchased = JSON.parse(data.purchased);
                get_purchased(purchased);
            } else {
                window.location = '../t-web/index.php?error=' + data.msg;
            }
        },
        error: function () {
            window.location = '../t-web/index.php?error=' + "AJAX";
        }
    });
});

function get_purchased(purchased) {
    for (var i = 0; i < purchased.length; i++) {
        $("#purchased").append("<li class='item media'>"
            + "<img id='" + purchased[i].ALBUMID + "'"
            + " class='item-image mr-3' alt='" + purchased[i].ALBUMTITLE + "'"
            + " src='../files/" + purchased[i].ALBUMCOVER + ".jpg'>"
            + "<div class='media-body'> <h5 class='mt-0 mb-1 description'>" + purchased[i].ALBUMTITLE
            + "</h5>" + purchased[i].ARTISTNAME + "</div>");
    }
    $(".item-image").bind('click', function () {
        window.location = '../php-views/album.php?' + this.id;
    });
}