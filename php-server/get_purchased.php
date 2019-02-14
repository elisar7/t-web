<?php

require_once("access_control.php");

require_once("database.php");

if (isset($_SESSION["user"])) {
    try {
        $purchased = get_purchased($_SESSION["user"]);
        echo(json_encode(['code' => 200, 'purchased' => json_encode($purchased)]));
    } catch (Exception $e) {
        echo(json_encode(['code' => 404, 'msg' => "Server error"]));
    }
} else {
    echo(json_encode(['code' => 404, 'msg' => "There was an error in your request."]));
}


?>