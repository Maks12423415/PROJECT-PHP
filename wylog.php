<?php
session_start();

$_SESSION['zalogowano'] = false;
$_SESSION['user'] = "";
$_SESSION['upr'] = "";

//echo "Zostałeś wylogowany";

// Przekierowanie za pomocą JavaScript
echo "<script>
    setTimeout(() => {
    window.location.href = './index.php'
    },'2000')
    </script>"

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

<h1>Zaraz nastąpi wylogowanie</h1>

</body>
</html>
