<?php

require_once("access_control.php");
require_once("database.php");

$products = get_bestsellers();

if (!empty($products)) {
    try {
        echo(json_encode(['code' => 200, 'products' => json_encode($products)]));
    } catch (Exception $e) {
        echo(json_encode(['code' => 404, 'msg' => "Server error"]));
    }


} else {

    echo(json_encode(['code' => 404, 'msg' => "No product found"]));

}

?>