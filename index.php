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
    <title>LANMAX</title>
</head>
<body>

<div id="baner">
    <img id="logo" src="logo.png" alt="LANMAX">
    <?php include 'menu.php'; ?>
</div>

<div id="języki">
    <form action="" method="post">
        <?php
        $server = "localhost";
        $dbpass = "";
        $dbuser = "root";
        $db = "szkola";

        $conn = mysqli_connect($server, $dbuser, $dbpass, $db);

        if(!$conn){
             mysqli_connect_error($conn);
        }

        $sql = "SELECT * FROM rodzaje";

        
        $result = mysqli_query($conn, $sql);

        if(mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_assoc($result)){
                echo "<input type='hidden'  value='{$row['ID']}'>";
                
                echo "<input type='submit' name='submit' class='divy2' value='{$row['ID']}' data-id='{$row['ID']}'>";
            }
            
        }
        
        mysqli_close($conn);
        ?>
    </form>
</div>

<?php
if(isset($_POST['submit'])){
    $server = "localhost";
    $dbpass = "";
    $dbuser = "root";
    $db = "szkola";

    $conn = mysqli_connect($server, $dbuser, $dbpass, $db);

    if(!$conn){
         mysqli_connect_error($conn);
    }

    $login = $_SESSION['login'];
    $tytul_id = $_POST['submit']; // Pobieramy ID kursu z hidden input, a nie z przycisku submit

    $sql = "UPDATE kursy SET tytul=? WHERE login=?";
    $stmt = mysqli_prepare($conn, $sql);

    if($stmt){
        mysqli_stmt_bind_param($stmt, "is", $tytul_id, $login);
        mysqli_stmt_execute($stmt);

        if(mysqli_stmt_affected_rows($stmt) > 0) {
            echo "Dane zaktualizowane pomyślnie.";
        } else {
            echo "Błąd aktualizacji danych: " . mysqli_stmt_error($stmt);
        }

        mysqli_stmt_close($stmt);
    } else {
        echo "Błąd przygotowania zapytania: " . mysqli_error($conn);
    }

    mysqli_close($conn);
}
?>

<div id="stopka"> </div>

</body>
</html>
