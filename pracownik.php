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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="https://www.creativefabrica.com/wp-content/uploads/2021/03/20/Mountain-logo-Design-Graphics-9785421-1-1-580x435.png" type="image/icon type">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel pracownika</title>
</head>
<body>


<div id="baner">
    <img id="logo" src="logo.png" alt="LANMAX">
    <?php include 'menu.php'; ?>
</div>
<div id="pra">
    <div id="panel_pracownika">
        <h2>Panel Pracownika</h2>

        <!-- Formularz dodawania nowego kursu -->
        <div id="dodawanie_kursów">
            <form action="" method="post" class="formularz">
                <label for="nowy_kurs">Dodaj nowy kurs:</label>
                <input type="text" id="nowy_kurs" name="Nowy_kurs" required>
                <input type="submit" value="Dodaj" class="button">
            </form>
        </div>

        <!-- Formularz wybierania i usuwania kursu -->
        <div id="usuwane_kursow">
            <form action="pracownik.php" method="post" class="formularz">
                <label for="wybrany_kurs">Wybierz kurs do usunięcia:</label>
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
                    echo "<select id='wybrany_kurs' name='selected_course'>";
                    while($row = mysqli_fetch_assoc($result)){
                        echo "<option value='{$row['tytul_kursy']}'>{$row['tytul_kursy']}</option>";
                    }
                    echo "</select>";
                }

                mysqli_close($conn);
                ?>
                <input type="submit" name="delete_kurs" value="Usuń" class="button">
            </form>
        </div>

                <!-- Tabela użytkowników i przypisanych do nich kursów -->
        <table>
            <tr>
                <th>Użytkownik</th>
                <th>Aktualny kurs</th>
            </tr>
            <?php
            $server = "localhost";
            $dbpass = "";
            $dbuser = "root";
            $db = "szkola";

            $conn = mysqli_connect($server, $dbuser, $dbpass, $db);

            if(!$conn){
                die("Connection failed: " . mysqli_connect_error());
            }

            $sql = "SELECT users.login, kursy.tytul FROM `kursy` JOIN `users` ON users.login = kursy.login";
            $result = mysqli_query($conn, $sql);

            if(mysqli_num_rows($result) > 0){
                while($row = mysqli_fetch_assoc($result)){
                    echo "<tr>";
                    echo "<td>{$row['login']}</td>";
                    echo "<td>{$row['tytul']}</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='2'>Brak danych do wyświetlenia</td></tr>";
            }

            mysqli_close($conn);
            ?>
        </table>

    </div>
</div>
</body>
</html>

