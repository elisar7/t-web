$(document).ready(function () {
    $("#button-login").bind('click', login);
    $("#button-subscribe").bind('click', subscribe);
});

function login() {
    var email = $("#email-login").val();
    var password = $("#password-login").val();
    $.ajax({
        type: 'POST',
        url: "../t-web/php-server/login.php",
        dataType: "json",
        data: {email: email, password: password},
        success: function (data) {
            if (data.code == 200) {
                window.location.replace("../t-web/php-views/home.php");
            } else if (data.code == 404) {
                $("#error-login").text(data.msg);
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

function subscribe() {
    var email = $("#email-subscribe").val();
    var password = $("#password-subscribe").val();
    $.ajax({
        type: 'POST',
        url: "../t-web/php-server/subscribe.php",
        dataType: "json",
        data: {email: email, password: password},
        success: function (data) {
            if (data.code == 200) {
                window.location.replace("../t-web/php-views/home.php");
            } else if (data.code == 404) {
                $("#error-subscribe").text(data.msg);
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