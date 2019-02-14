<?php

require_once("access_control.php");
require_once("database.php");

if (!isset($_POST["album"])) {
    echo(json_encode(['code' => 404, 'msg' => "No item selected"]));
} else {
    try {
        add_to_purchased($_POST["album"], $_SESSION["user"]);
        echo(json_encode(['code' => 200, 'msg' => "Item purchased"]));
    } catch (Exception $e) {
        echo(json_encode(['code' => 404, 'msg' => "Server error"]));
    }

}

?>