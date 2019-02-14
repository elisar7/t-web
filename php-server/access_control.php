<?php

if (!isset($_SESSION)) {
    session_start();
}

if (!isset($_SESSION["user"])) {
    $_SESSION["error"] = "You must be logged in to access this page";
    header("Location: ../index.php");
}

?>