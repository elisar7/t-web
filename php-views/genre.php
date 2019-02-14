<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-server/access_control.php"); ?>

<?php $filename = basename(__FILE__, ".php"); ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/head.php") ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/navbar.php") ?>

    <div class="container">
        <div class="row">
            <div class="col content">
                <h3 id="genre"></h3>
                <ul id="product-grid" class="list-unstyled">
                </ul>
            </div>
        </div>
    </div>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/footer.php") ?>