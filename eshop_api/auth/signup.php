<?php
 
 include "../connect.php";

  $username = filterRequest("username") ;
  $email    = filterRequest("email");
  $password = sha1("password");
  $phone = filterRequest("phone");
  $verifycode = "0";

  // check if user excist

  $stmt = $con->prepare("SELECT * FROM users WHERE email = ? OR users_phone = ?");
  $stmt->execute(array($email, $phone)) ;
  $count = $stmt->rowcount();
  if ($count > 0 ) {
     printFailure("PHONE OR EMAIL");
  }else{
     $data = array(
      "users_name" => "$username", 
      "users_password" => "$password",
      "users_email" => "$email",
      "users_phone" => "$phone",
      "users_verifycode" => "0",
    );
     insertData("users", $data);
  }
?>