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


<div id="dane">

<form action="" method="get">
<table id="tabela">
    <tr>
        <th>Wybierz uzytkownika</th>
        
        </tr>
        <tr>
        <td><?php 

        $server = "localhost";
        $dbpass = "";
        $dbuser = "root";
        $db = "szkola";
        
        
        $conn = mysqli_connect($server, $dbuser, $dbpass, $db);
        
        
        if(!$conn){
             mysqli_connect_error($conn);
        }
        
        
        $sql = "SELECT login, upr FROM `users`";
        $result = mysqli_query($conn, $sql);
        
        if(mysqli_num_rows($result) > 0){
            echo "<select>";
            while($row = mysqli_fetch_assoc($result)){
                    
                    echo "<option> {$row['login']} | {$row['upr']} </option>";
                    
            }
            echo "</select>";
        }
        
        
        
        mysqli_close($conn);
        ?></td>
        
        <td><input type="submit" value="Zmień"></td>
    </tr>
</table>
</form>














</div>
    
</body>
</html>