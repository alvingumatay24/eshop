<?php 

include "../connect.php";

$email = filterRequest("email");
$password    = filterRequest("password");
$data = array("users", $data, "users_email = '$email'");