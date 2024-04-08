<?php
session_start();

$login = $_SESSION['login'];

// Połączenie z bazą danych
$server = "localhost";
$dbpass = "";
$dbuser = "root";
$db = "szkola";

$conn = mysqli_connect($server, $dbuser, $dbpass, $db);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}

// Dodawanie wszystkich lekcji, jeśli nie istnieją
for ($i = 1; $i <= 10; $i++) {
    $lesson_number = $i;
    $check_query = "SELECT * FROM status WHERE login = '$login' AND lekcja = $lesson_number";
    $check_result = mysqli_query($conn, $check_query);
    
    if(mysqli_num_rows($check_result) == 0) {
        // Jeżeli lekcja nie istnieje, dodajemy ją do bazy danych
        $insert_query = "INSERT INTO status (login, status_lekcji, lekcja) VALUES ('$login', FALSE, $lesson_number)";
        mysqli_query($conn, $insert_query);
    }
}

if(isset($_POST['lesson'])) {
    $lesson_number = filter_input(INPUT_POST, 'lesson', FILTER_SANITIZE_NUMBER_INT);
    
    // Sprawdzenie czy użytkownik ma już zapisaną daną lekcję w bazie danych
    $check_query = "SELECT * FROM status WHERE login = '$login' AND lekcja = $lesson_number";
    $check_result = mysqli_query($conn, $check_query);

    if(mysqli_num_rows($check_result) > 0) {
        // Jeżeli już jest wpis dla użytkownika i lekcji, aktualizujemy go
        $update_query = "UPDATE status SET status_lekcji = !status_lekcji WHERE login = '$login' AND lekcja = $lesson_number";
        mysqli_query($conn, $update_query);
    } else {
        // W przeciwnym razie dodajemy nowy wpis do bazy danych
        $tytul = $row['tytul_kursy']; // Przeniesione z definicji zapytania SQL
        $insert_query = "INSERT INTO status (login, status_lekcji, lekcja, tytul) VALUES ('$login', TRUE, $lesson_number, '$tytul')";
        mysqli_query($conn, $insert_query);
    }
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
    <style>
        /* Add your CSS styles here */
        .checkbox-label {
            font-size: 18px;
        }
    </style>
    <script>
        // Funkcja do ustawiania stanu koloru checkboxa na podstawie danych z PHP
        function setCheckboxColor(checkboxId, status) {
            var checkbox = document.getElementById(checkboxId);
            if (status === '1') {
                checkbox.checked = true;
                checkbox.style.backgroundColor = 'green';
            } else {
                checkbox.checked = false;
                checkbox.style.backgroundColor = ''; // Reset to default color
            }
        }
    </script>
</head>
<body>

<div id="baner">
    <img id="logo" src="logo.png" alt="LANMAX">

    <?php
    // Include menu
    include 'menu.php';
    ?>
</div>

<div id="kursy">
    <?php

    // Pobranie danych kursów, użytkowników i rodzajów kursów
    $sql = "SELECT * FROM `kursy`, users, rodzaje WHERE users.login=kursy.login AND kursy.tytul=rodzaje.tytul_kursy";
    $result = mysqli_query($conn, $sql);

    // Sprawdzenie czy istnieją jakiekolwiek kursy
    if(mysqli_num_rows($result) > 0){
        // Pętla przez wszystkie wiersze wynikowe
        while($row = mysqli_fetch_assoc($result)){
            $tytul = $row['tytul_kursy']; // Przeniesione z definicji zapytania SQL

            // Sprawdzenie czy zalogowany użytkownik ma dostęp do tego kursu
            if($login == $row['login']){
                echo "<div id='m'>";

                echo "<div  class='divy'><h1>{$row['tytul_kursy']}</h1></div>";
                echo "<form action='' method='post'>";
                // Dodanie checkboxów lekcji
                for ($i = 1; $i <= 10; $i++) {
                    $lesson_number = $i;
                    $status_query = "SELECT status_lekcji FROM status WHERE login = '$login' AND lekcja = $lesson_number";
                    $status_result = mysqli_query($conn, $status_query);
                    $status_row = mysqli_fetch_assoc($status_result);
                    if ($status_row !== null && isset($status_row['status_lekcji'])) {
                        $status = $status_row['status_lekcji'];
                        echo "<div>";
                        echo "<label class='checkbox-label' for='checkbox_$i'>Odznacz lekcję:</label>";
                        echo "<input id='checkbox_$i' type='checkbox' onchange='setCheckboxColor(\"checkbox_$i\", \"$status\")' />";
                        echo "<input type='submit' name='lesson' value='Lekcja $i' class='divy'></div>";
                    }
                }
                echo "</form>";
                echo "</div>";
                echo "<div id='n'>";
                // Wyświetlenie treści lekcji
                if(isset($_POST['lesson'])) {
                    $lesson_number = filter_input(INPUT_POST, 'lesson', FILTER_SANITIZE_NUMBER_INT);
                    $lesson_query = "SELECT tresc FROM lekcje WHERE tytul = '{$row['tytul_kursy']}' AND ID_lekcji = $lesson_number";
                    $lesson_result = mysqli_query($conn, $lesson_query);
                    if ($lesson_result) {
                        $lesson_row = mysqli_fetch_assoc($lesson_result);
                        if ($lesson_row !== null) {
                            echo "<div id='z'><p>{$lesson_row['tresc']}</p></div>";
                        } else {
                            echo "<div id='z'><p>No content available for this lesson.</p></div>";
                        }
                    } else {
                        echo "Error retrieving lesson content: " . mysqli_error($conn);
                    }
                }

                echo "</div>";
            }
        }
    } else {
        echo "No courses available.";
    }

    mysqli_close($conn);
    ?>
</div>

</body>
</html>
