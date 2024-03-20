<?php
session_start();

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

   
    $sql = "SELECT * FROM `users` WHERE login='$login' AND pass='$haslo'";
    $result= mysqli_query($conn,$sql);


    if(mysqli_num_rows($result)>0){
        //zalogowano
        $_SESSION['zalogowano']=true;
        
        $row = mysqli_fetch_assoc($result);

        $_SESSION['user']= $row['login'];

        $_SESSION['upr']=$row['upr'];

        header('Location: ./index.php') ;
        
    } else {
        $_SESSION['zalogowano']=false;
        //niezalogowano

        $_SESSION['user']="";

        $_SESSION['upr']="";

        $_SESSION['komunikat']="Błędne dane logowania";
    }

    
    mysqli_close($conn);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style1.css">
    <link rel="icon" href="https://www.creativefabrica.com/wp-content/uploads/2021/03/20/Mountain-logo-Design-Graphics-9785421-1-1-580x435.png" type="image/icon type">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
</head>
<body>
<div id="log">


<div id="logowanie">
   <h1>Zaloguj się</h1>

    <form action="" method="post">
        <input type="text" placeholder="Wprowadź login..." name="login"><br>
        <input type="text" placeholder="Wprowadź hasło..." name="password"><br>
        <input type="submit">
    </form>
    <?php
    echo $_SESSION['komunikat'];
    ?>
</div>







</div>
</body>
</html>