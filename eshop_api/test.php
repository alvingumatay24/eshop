<?php

// include './connect.php';
// $table = "users";
// $data = array(
// "users_name" => "alvin",
// "users_email" => "alvingumatay@gmail.com",
// "users_phone" => "32145",
// "users_verifycode" => "324343",
// );

// $count = insertData($table, $data);

include "connect.php";


getAllData("users" ,   " 1 = 1");

?>
