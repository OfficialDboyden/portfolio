<?php
$user = "root";
$password = "";

try{
  $pdo = new PDO('mysql:host=localhost;dbname=portfolio', $user, $password);
  $pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
  // var_dump($conn);
}catch(PDOException $exception){
  echo 'connect error! ' . $exception->getMessage();
}

$query = "SELECT * FROM tbl_work";

$get_project = $pdo->query($query);
$results = array();

while($row = $get_project->fetch(PDO::FETCH_ASSOC)) {
    $results[] = $row;
}

echo json_encode($results);

?>
