$.ajax({
    type: "GET",
    url: "../php-server/get_bestsellers.php",
    dataType: "json",
    success: function (data) {
        if (data.code == 200) {
            var products = JSON.parse(data.products);
            load_bestsellers(products);
        } else {
            window.location = '../t-web/index.php?error=' + data.msg;
        }
    },
    error: function () {
        window.location = '../t-web/index.php?error=' + "AJAX";
    }
});

function load_bestsellers(products) {
    $("#carousel-slides").append(
        "<div class='carousel-item bestseller active'>" +
        "<img src='../files/" + products[0].ALBUMCOVER + ".jpg'" +
        "id = '" + products[0].ALBUMID +
        "' class='d-block w-100 cover' alt = '" + products[0].ALBUMTITLE +
        "'></div>"
    );
    for (var i = 1; i < products.length; i++) {
        $("#carousel-slides").append(
            "<div class='carousel-item bestseller'>" +
            "<img src='../files/" + products[i].ALBUMCOVER + ".jpg'" +
            "id = '" + products[i].ALBUMID +
            "' class='d-block w-100 cover' alt = '" + products[i].ALBUMTITLE +
            "'></div>"
        );
    }
    $(".cover").bind('click', function () {
        window.location = '../php-views/album.php?' + this.id;
    });
}