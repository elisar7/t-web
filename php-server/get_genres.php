<?php

require_once("database.php");

$genres = json_encode(get_all_genres());

if (!empty($genres)) {
    try {
        echo(json_encode(['code' => 200, 'genres' => $genres]));
    } catch (Exception $e) {
        echo(json_encode(['code' => 404, 'msg' => "Server error"]));
    }

} else {
    echo(json_encode(['code' => 404, 'msg' => "No genre found"]));
}

?>