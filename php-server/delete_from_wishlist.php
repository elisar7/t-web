<?php

require_once("access_control.php");
require_once("database.php");

if (empty($_POST["album"])) {
    echo(json_encode(['code' => 404, 'msg' => "No item selected"]));
} else {
    try {
        delete_from_wishlist($_POST["album"], $_SESSION["user"]);
        $wishlist = get_wishlist($_SESSION["user"]);
        echo(json_encode(['code' => 200, 'wishlist' => json_encode($wishlist)]));
    } catch (Exception $e) {
        echo(json_encode(['code' => 404, 'msg' => "Server error"]));
    }

}

?>