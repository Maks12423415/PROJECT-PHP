<?php
session_start();

$login = $_SESSION['login'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="https://www.creativefabrica.com/wp-content/uploads/2021/03/20/Mountain-logo-Design-Graphics-9785421-1-1-580x435.png" type="image/icon type">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<div id="baner">

    <img id="logo" src="logo.png" alt="LANMAX">

<?php
//baner do wybierania podstron oraz znacznik konta uzytkownika

include 'menu.php';

?>
</div>

<div id="kursy">

<?php

$server = "localhost";
$dbpass = "";
$dbuser = "root";
$db = "szkola";


$conn = mysqli_connect($server, $dbuser, $dbpass, $db);


if(!$conn){
     mysqli_connect_error($conn);
}


$sql = "SELECT * FROM `kursy`, users, rodzaje WHERE users.login=kursy.login AND kursy.tytul=rodzaje.tytul_kursy";
$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        $_SESSION['login'] = $row['login']; 
        $login = $_SESSION['login'];
        if($login == $row['login']){
            echo "<div id='m'>";
            
            echo "<div type='submit' class='divy'><h1>{$row['tytul_kursy']}</h1></div>";
            echo "<input type='submit' value='Lekcja 1' class='divy'>";
            echo "<input type='submit' value='Lekcja 2' class='divy'>";
            echo "<input type='submit' value='Lekcja 3' class='divy'>";
            echo "<input type='submit' value='Lekcja 4' class='divy'>";
            echo "<input type='submit' value='Lekcja 5' class='divy'>";
            echo "<input type='submit' value='Lekcja 6' class='divy'>";
            echo "<input type='submit' value='Lekcja 7' class='divy'>";
            echo "<input type='submit' value='Lekcja 8' class='divy'>";
            echo "<input type='submit' value='Lekcja 9' class='divy'>";            
            echo "<input type='submit' value='Lekcja 10' class='divy'>";
            echo "</div>";
            echo "<div id='n'>";
            echo "<div id='z'> </div>";
            echo "</div>";
        }
    }
}

mysqli_close($conn);
?>

</div>

</body>
</html>
