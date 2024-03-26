<?php
session_start();

if($_SESSION['upr'] != "admin"){
    header("Location: ./index.php");
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
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


<div >

<table>
    <tr>
        <th>Login</th>
        <td><?php ?></td>
    </tr>
</table>

</div>
    
</body>
</html>