<?php

require_once("database.php");

$error_msg = "";

if (empty($_POST["email"]) || empty($_POST["password"])) {
    echo(json_encode(['code' => 404, 'msg' => "Email and password required"]));
} else {
    $email = $_POST["email"];
    $password = $_POST["password"];
    try {
        if (!exists_user($email)) {
            echo(json_encode(['code' => 404, 'msg' => "User does not exist"]));
        } else if (!is_correct_password($email, $password)) {
            echo(json_encode(['code' => 404, 'msg' => "Wrong password"]));
        } else {
            if (isset($_SESSION)) {
                session_regenerate_id(TRUE);
            }
            $_SESSION["user"] = $email;
            echo(json_encode(['code' => 200, 'msg' => "Login successful"]));
        }
    } catch (Exception $e) {
        echo(json_encode(['code' => 500, 'msg' => "Our database is down"]));
    }
}

?>