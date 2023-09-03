<?php
 
 include "../connect.php";
  $email    = filterRequest("email");
  $password = sha1("password");

  $stmt = $con->prepare("SELECT * FROM users WHERE users_email = ? OR users_password = ?");
  $stmt->execute(array($email, $password)) ;
  $count = $stmt->rowcount();
  result($count);