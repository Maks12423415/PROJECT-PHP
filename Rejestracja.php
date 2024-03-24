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

   
    $sql = "INSERT INTO `users`(`login`, `pass`, `upr`) VALUES ('$login', '$haslo', 'user')";

    if(mysqli_query($conn, $sql)){
        

       echo "<script>
    setTimeout(() => {
    window.location.href = './Logowanie.php'
    },'2000')
    </script>";

    } else {
        $_SESSION["blad"] ="Nie dodano usera";
        echo mysqli_error($conn);
    }

    
    mysqli_close($conn);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="rej.css">
    <link rel="icon" href="https://www.creativefabrica.com/wp-content/uploads/2021/03/20/Mountain-logo-Design-Graphics-9785421-1-1-580x435.png" type="image/icon type">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejestracja</title>
</head>
<body>
    
<div id="rejestr">
    
<div id="rej">
<h1>REJESTRACJA</h1>
    <form action="" method="post" id="form">
        <input type="text" placeholder="Wprowadź login..." name="login"><br>
        <input type="text" placeholder="Wprowadź hasło..." name="password"><br>
        <input type="submit"><br>
    </form>
    <div class="error-message"><?php echo isset($_SESSION['blad']) ? $_SESSION['blad'] : ''; ?></div>
</div>
    
<div id="log-container">
   <div id="log">
      <h1>Jeżeli posiadasz już konto <a href="Logowanie.php">zaloguj się</a></h1>
   </div>
</div>


</div>
</body>
</html>
