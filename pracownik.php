<?php
session_start();

if($_SESSION['upr'] != "pracownik" && $_SESSION['upr'] != "admin"){
    header("Location: ./index.php");
    exit(); // Add an exit after redirection to stop further execution
}


if(isset($_POST['delete_kurs'])){
    $server = "localhost";
    $dbpass = "";
    $dbuser = "root";
    $db = "szkola";
    
    $conn = mysqli_connect($server, $dbuser, $dbpass, $db);
    
    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }
    
    $selected_course = $_POST['selected_course'];
    
    $sql = "DELETE FROM `rodzaje` WHERE tytul_kursy=?";
    $stmt = mysqli_prepare($conn, $sql);
    
    mysqli_stmt_bind_param($stmt, "s", $selected_course);
    mysqli_stmt_execute($stmt);
    
    mysqli_stmt_close($stmt);
    mysqli_close($conn);
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

<div id='dodawanie_kursów'>

    <!-- Adding a new course -->
    <form action="" method="post">
        <input type="text" name="Nowy_kurs">
        <input type="submit" value="Dodaj nowy kurs">
    </form>

    <!-- Selecting and deleting a course -->
    <form action="pracownik.php" method="post">
        <table id="tabela">
            <tr>
                <th>Wybierz Kurs</th>
                <th></th>
            </tr>
            <tr>
                <td>
                <?php 
if(isset($_POST['Nowy_kurs'])){
    $server = "localhost";
    $dbpass = "";
    $dbuser = "root";
    $db = "szkola";

    $conn = mysqli_connect($server, $dbuser, $dbpass, $db);

    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }

    $tytul = $_POST['Nowy_kurs'];

    $sql = "INSERT INTO `rodzaje` (`tytul_kursy`) VALUES (?)";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "s", $tytul);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);

    // Dodaj brakujące lekcje dla nowo dodanego kursu
    $sql1 = "INSERT INTO `lekcje` (`id_lekcji`, `tytul`, `tresc`) VALUES (?, ?, 'Brak aktualnej treści')";
    $stmt1 = mysqli_prepare($conn, $sql1);
    for($i = 1; $i <= 10; $i++) {
        mysqli_stmt_bind_param($stmt1, "is", $i, $tytul);
        mysqli_stmt_execute($stmt1);
    }
    mysqli_stmt_close($stmt1);

    mysqli_close($conn);
}
?>



                
                
                    <?php 
                    $server = "localhost";
                    $dbpass = "";
                    $dbuser = "root";
                    $db = "szkola";
                    
                    $conn = mysqli_connect($server, $dbuser, $dbpass, $db);
                    
                    if(!$conn){
                        die("Connection failed: " . mysqli_connect_error());
                    }
                    
                    $sql = "SELECT tytul_kursy FROM `rodzaje`";
                    $result = mysqli_query($conn, $sql);
                    
                    if(mysqli_num_rows($result) > 0){
                        echo "<select name='selected_course'>";
                        while($row = mysqli_fetch_assoc($result)){
                            echo "<option value='{$row['tytul_kursy']}'> {$row['tytul_kursy']}  </option>";
                        }
                        echo "</select>";
                    }
                    
                    mysqli_close($conn);
                    ?>
                </td>
                <td><input type="submit" name="delete_kurs" value="Usuń"></td>
            </tr>
        </table>
    </form>
</div>


</body>
</html>
