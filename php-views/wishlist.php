<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-server/access_control.php"); ?>

<?php $filename = basename(__FILE__, ".php"); ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/head.php") ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/navbar.php") ?>

    <div class="container">
        <div class="row">
            <div class="col content">
                <h3>Your wishlist</h3>
                <h4 id="feedback"></h4>
                <ul id="wishlist" class="list-unstyled">
                </ul>
            </div>
        </div>
    </div>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/footer.php") ?>