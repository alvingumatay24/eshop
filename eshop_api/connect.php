<?php

$dsn = "mysql:host=localhost;dbnam=ecommerce";
$user = "root";
$pass = "";
$option = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8");
$countrowinpage =  9;
try {
	$con = new PDO($dsn, $user, $pass, $option);
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    header("");
    header("");
    header("");
    include "./functions.php";
    if(!isset($notAuth)){
       //checkAuthenticate();
    }
    
}catch (PDOException $e){
       echo $e->getMessage();

}       
