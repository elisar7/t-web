<?php

if (!isset($_SESSION)) {
    session_start();
}

if (isset($_GET["error"])) {
    session_unset();
    session_destroy();
}

if (isset($_SESSION["user"]))
    header("Location: php-views/home.php");
?>

<?php $filename = basename(__FILE__, ".php"); ?>

<?php require(__DIR__ . "/php-sections/head.php") ?>

<?php
if (isset($_GET["error"])) {
    ?>
    <div id="error-msg"><?= $_GET["error"] ?>!<br> Please, retry later!</div> <?php
}
?>

    <div class="container">
        <div class="row">
            <div class="col form">
                <h3>Login</h3>
                <form>
                    <input id="email-login" required type="email" placeholder="Insert email"><br>
                    <input id="password-login" required type="password" placeholder="Insert password"><br>
                    <button id="button-login" type="submit">Login</button>
                    <p id="error-login"></p>
                </form>
            </div>
            <div class="col form">
                <h3>Subscribe</h3>
                <form>
                    <input id="email-subscribe" required type="email" placeholder="Insert email"><br>
                    <input id="password-subscribe" required type="password" placeholder="Insert password"><br>
                    <button id="button-subscribe" type="submit">Subscribe</button>
                    <p id="error-subscribe"></p>
                </form>
            </div>
        </div>
    </div>

<?php require(__DIR__ . "/php-sections/footer.php") ?>