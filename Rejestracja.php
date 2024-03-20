<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="https://www.creativefabrica.com/wp-content/uploads/2021/03/20/Mountain-logo-Design-Graphics-9785421-1-1-580x435.png" type="image/icon type">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejestracja</title>
</head>
<body>
    <h1>rejestracja</h1>

    

    <form action="" method="post">
        <input type="text" name="login">
        <input type="text" name="password">
        <input type="submit">
    </form>

    <?php
    if(isset($_POST["login"]) && isset($_POST["password"])){


        $login = $_POST["login"];
        $pass = $_POST["password"];


       function szyfruj_haslo($pass){
            return md5($pass);
        }

        $haslo = szyfruj_haslo($pass);


        $server = "192.168.15.151";
        $dbpass = "zaq12wsx";
        $dbuser = "root";
        $db = "szkola";

        
        $conn = mysqli_connect($server, $dbuser, $dbpass, $db);

      
        if(!$conn){
             mysqli_connect_error($conn);
        }

       
        $sql = "INSERT INTO `users`(`login`, `pass`, `upr`) VALUES ('$login', '$haslo', 'user')";

        if(mysqli_query($conn, $sql)){
            echo "dodano użytkownika";
        } else {
            echo "Nie dodano usera";
            echo mysqli_error($conn);
        }

        
        mysqli_close($conn);
    }
    ?>

</body>
</html>
