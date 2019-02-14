<?php

require_once("access_control.php");
require_once("database.php");

if (isset($_POST["genre"])) {

    $products = get_by_genre($_POST["genre"]);

    if (!empty($products)) {
        try {
            echo(json_encode(['code' => 200, 'albums' => json_encode($products)]));
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