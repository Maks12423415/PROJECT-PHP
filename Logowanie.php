<?php
session_start();

if(isset($_POST["login"]) && isset($_POST["password"])){


    $login = $_POST["login"];
    $pass = $_POST["password"];


   function szyfruj_haslo($pass){
        return md5($pass);
    }

    $haslo = szyfruj_haslo($pass);


    $server = "localhost";
    $dbpass = "";
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

        $_SESSION['login']=$login;
        
        $row = mysqli_fetch_assoc($result);

        $_SESSION['user']= $row['login'];

        $_SESSION['upr']=$row['upr'];

        header('Location: ./index.php') ;

        $_SESSION["komunikat"]="";
        
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

    <form action="" method="post" >
        <input type="text" placeholder="Wprowadź login..." name="login"><br>
        <input type="password" placeholder="Wprowadź hasło..." name="password"><br>
        <input type="submit" value="Zaloguj">
    </form>
    <div class="error-message"><?php if(isset($_SESSION['komunikat'])){ echo $_SESSION['komunikat']; }; ?></div>
</div>

<div id="rej-container">
   <div id="rej">
      <h1>Jeżeli nie posiadasz jeszcze konta <a href="Rejestracja.php">zarejestruj się</a></h1>
   </div>
</div>



</div>
</body>
</html>