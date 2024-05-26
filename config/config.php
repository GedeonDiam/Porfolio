<?php

    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "portfolio";

    require_once 'controller/controllers.php';
    $unController = new Controller($server, $username, $password, $database);
