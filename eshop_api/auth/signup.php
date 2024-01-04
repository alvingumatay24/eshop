<?php
 
 include "../connect.php";

  $username = filterRequest("username");
  $email    = filterRequest("email");
  $password = sha1($_POST['password']);
  $phone = filterRequest("phone");
  $verifycode = rand(10000 , 99999);
//   $verifycode = ("0");

  // check if user excist

  $stmt = $con->prepare("SELECT * FROM users WHERE users_email = ? OR users_phone = ?");
  $stmt->execute(array($email, $phone)) ;
  $count = $stmt->rowcount();
  if ($count > 0 ) {
     printFailure("PHONE OR EMAIL");
  }else{
     $data = array(
      "users_name" => $username, 
      "users_password" => $password,
      "users_email" => $email,
      "users_phone" => $phone,
      "users_verifycode" => $verifycode,
    );
     mail($email, "Verify Code ExpressCommerce", "Verify Code ".$verifycode."");
     insertData("users", $data);
  }
