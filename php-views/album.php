<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-server/access_control.php"); ?>

<?php $filename = basename(__FILE__, ".php"); ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/head.php") ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/navbar.php") ?>

    <div class="container">
        <div class="row">
            <div id="album" class="col-sm-8 content">
                <h2 id="album-name"></h3>
                    <div id="product-info">
                        <h3 id="artist"></h3>
                        <div id="cover"></div>
                        <h3 id="year"></h3>
                        <h3 id="price"></div>
            </div>
            <div class="col-sm-4">
                <div id="sidebar-buy" class="sidebar content">
                    Drag here to BUY
                </div>
                <div id="sidebar-wishlist" class="sidebar content">
                    Drag here to add to your WISHLIST
                </div>
            </div>
        </div>
    </div>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/footer.php") ?>