<?php

require_once("access_control.php");
require_once("database.php");

session_unset();
session_destroy();

header("Location: ../index.php");

?>