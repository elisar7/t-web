<?php

if (!isset($_SESSION)) {
    session_start();
}

function db_connection()
{
    $dsn = "mysql: host=localhost; dbname=MUSICWIZ; charset=utf8mb4";
    $db = new PDO($dsn, "root", "root");
    if ($db != null) {
        return $db;
    } else {
        throw new PDOException();
    }

}

function exists_user($email)
{
    $db = db_connection();
    $stat = $db->prepare(
        "SELECT * FROM USERS WHERE EMAIL=?");
    $stat->execute([$email]);
    if ($stat->rowCount() > 0) {
        return true;
    } else {
        return false;
    }
}

function is_valid_user($email)
{
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        return true;
    } else {
        return false;
    }
}

function is_valid_password($password)
{
    if (strlen($password) >= 8) {
        return true;
    } else {
        return false;
    }
}

function is_correct_password($email, $password)
{
    $db = db_connection();
    $stat = $db->prepare(
        "SELECT * FROM USERS WHERE EMAIL=? AND PASSWORD=?");
    $stat->execute([$email, $password]);
    if ($stat->rowCount() > 0) {
        return true;
    } else {
        return false;
    }
}

function insert_user($email, $password)
{
    $db = db_connection();
    $stat = $db->prepare("INSERT INTO USERS(EMAIL, PASSWORD) 
          VALUES(?, ?)");
    $stat->execute([$email, $password]);
}

function get_all_genres()
{
    $db = db_connection();
    $stat = $db->prepare(
        "SELECT * FROM GENRES");
    $stat->execute();
    return $stat->fetchAll(PDO::FETCH_ASSOC);
}

function get_bestsellers()
{
    $db = db_connection();
    $stat = $db->prepare("SELECT  ALBUMID, ALBUMTITLE, ALBUMYEAR, ALBUMCOVER
                FROM ALBUMS JOIN (
                   SELECT PRODUCT
                   FROM PURCHASED
                               JOIN ALBUMS ON (PRODUCT = ALBUMID)
                   GROUP BY PRODUCT
                   ORDER BY COUNT(PRODUCT) DESC) AS BESTSELLER ON (BESTSELLER.PRODUCT = ALBUMS.ALBUMID)");
    $stat->execute();
    return $stat->fetchAll(PDO::FETCH_ASSOC);
}

function get_by_genre($genre)
{
    $db = db_connection();
    $stat = $db->prepare("SELECT ALBUMID, ALBUMTITLE, ALBUMCOVER, ARTISTNAME, GENRENAME, PRICE
            FROM ALBUMS 
              JOIN GENRES ON (ALBUMS.GENREID = GENRES.GENREID)
              JOIN ARTISTS ON (ALBUMS.ARTISTID = ARTISTS.ARTISTID) 
            WHERE GENRES.GENREID = ?");
    $stat->execute([$genre]);
    return $stat->fetchAll(PDO::FETCH_ASSOC);
}

function get_album($album_id)
{
    $db = db_connection();
    $stat = $db->prepare("SELECT ALBUMID, ALBUMTITLE, ALBUMYEAR, ALBUMCOVER, ARTISTNAME, GENRENAME, PRICE
                FROM ALBUMS 
                  JOIN GENRES ON (ALBUMS.GENREID = GENRES.GENREID)
                  JOIN ARTISTS ON (ALBUMS.ARTISTID = ARTISTS.ARTISTID) 
                WHERE ALBUMS.ALBUMID = ?");
    $stat->execute([$album_id]);
    return $stat->fetchAll(PDO::FETCH_ASSOC);
}

function get_purchased($user)
{
    $db = db_connection();
    $stat = $db->prepare("SELECT ALBUMID, ALBUMTITLE, ALBUMYEAR, ALBUMCOVER, ARTISTNAME, PRICE
                    FROM PURCHASED
                      JOIN ALBUMS ON (ALBUMS.ALBUMID = PURCHASED.PRODUCT)
                      JOIN ARTISTS ON (ALBUMS.ARTISTID = ARTISTS.ARTISTID)
                    WHERE USER = ?");
    $stat->execute([$user]);
    return $stat->fetchAll(PDO::FETCH_ASSOC);
}

function get_wishlist($user)
{
    $db = db_connection();
    $stat = $db->prepare("SELECT ALBUMID, ALBUMTITLE, ALBUMYEAR, ALBUMCOVER, ARTISTNAME, PRICE
                    FROM WISHLISTS
                      JOIN ALBUMS ON (ALBUMS.ALBUMID = WISHLISTS.PRODUCT)
                      JOIN ARTISTS ON (ALBUMS.ARTISTID = ARTISTS.ARTISTID)
                    WHERE USER = ?");
    $stat->execute([$user]);
    return $stat->fetchAll(PDO::FETCH_ASSOC);
}

function add_to_wishlist($item, $email)
{
    $db = db_connection();
    $stat = $db->prepare("INSERT INTO WISHLISTS (PRODUCT, USER)
            VALUES(?, ?)");
    $stat->execute([$item, $email]);
}

function add_to_purchased($item, $email)
{
    $db = db_connection();
    $stat = $db->prepare("INSERT INTO PURCHASED (PRODUCT, USER)
            VALUES(?, ?)");
    $stat->execute([$item, $email]);
}

function delete_from_wishlist($item, $email)
{
    $db = db_connection();
    $stat = $db->prepare("DELETE FROM WISHLISTS
            WHERE PRODUCT = ? AND USER = ?");
    $stat->execute([$item, $email]);
}

?>