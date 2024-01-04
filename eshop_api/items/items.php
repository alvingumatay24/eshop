<?php 

include "../connect.php";

$categoryid = filterRequest("id");

$usersid = filterRequest("usersid");

// getAllData("itemsview", "categories_id = $categoryid");

$stmt = $con->prepare("SELECT items1view.*, 1 as favorite FROM  items1view
INNER JOIN favorite ON favorite.favorite_itemsid = items1view.items_id AND favorite.favorite_usersid = $usersid
WHERE categories_id = $categoryid
UNION ALL  
SELECT  * ,  0 as favorite FROM items1view
WHERE categories_id = $categoryid AND items_id 
!=(SELECT items1view.items_id FROM items1view
INNER JOIN favorite ON favorite.favorite_itemsid = items1view.items_id AND favorite.favorite_usersid = $usersid)");

$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
$count = $stmt->rowCount();

if($count > 0){
	echo json_encode(array("status" => "success", "data" => $data));
}else{
	echo json_encode(array("status" => "failure"));
}

