<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-server/access_control.php"); ?>

<?php $filename = basename(__FILE__, ".php"); ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/head.php") ?>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/navbar.php") ?>

    <div class="container">
        <div class="row">
            <div class="col content">
                <h3>Our bestsellers</h3>
                <div id="carousel" class="carousel slide" data-ride="carousel">
                    <div id="carousel-slides" class="carousel-inner bestsellers">
                    </div>
                    <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
        </div>
    </div>

<?php require_once($_SERVER['DOCUMENT_ROOT'] . "/t-web/php-sections/footer.php"); ?>