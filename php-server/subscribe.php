<?php

require_once("database.php");

$error_msg = "";

if (empty($_POST["email"]) || empty($_POST["password"])) {
    echo(json_encode(['code' => 404, 'msg' => "Email and password required"]));
} else {
    $email = $_POST["email"];
    $password = $_POST["password"];
    if (exists_user($email)) {
        echo(json_encode(['code' => 404, 'msg' => "User already exists"]));
    } else if (!is_valid_password($password)) {
        echo(json_encode(['code' => 404, 'msg' => "Invalid password"]));
    } else if (!is_valid_user($email)) {
        echo(json_encode(['code' => 404, 'msg' => "Username is not valid"]));
    } else {
        try {
            insert_user($email, $password);
            if (isset($_SESSION)) {
                session_regenerate_id(TRUE);
            }
            $_SESSION["user"] = $email;
            echo(json_encode(['code' => 200, 'msg' => "Subscription successful"]));
        } catch (Exception $e) {
            echo(json_encode(['code' => 500, 'msg' => "Server error"]));
        }
    }
}


?>