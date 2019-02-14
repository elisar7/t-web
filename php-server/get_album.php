<?php

require_once("access_control.php");
require_once("database.php");

if (isset($_POST["album"])) {

    $album = get_album($_POST["album"]);

    if (!empty($album)) {
        try {
            echo(json_encode(['code' => 200, 'album' => json_encode($album)]));
        } catch (Exception $e) {
            echo(json_encode(['code' => 404, 'msg' => "Server error"]));
        }

    } else {
        echo(json_encode(['code' => 404, 'msg' => "No product found"]));
    }

} else {
    echo(json_encode(['code' => 404, 'msg' => "There was an error in your request."]));
}

?>