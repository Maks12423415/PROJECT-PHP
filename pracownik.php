<?php
session_start();

if($_SESSION['upr'] != "pracownik" && $_SESSION['upr'] != "admin"){
    header("Location: ./index.php");
}
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
    <?php include 'menu.php'; ?>
</div>    




</body>
</html>