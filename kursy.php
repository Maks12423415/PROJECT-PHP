<?php
session_start();

$login = $_SESSION['login']; // Pobranie zalogowanego użytkownika z sesji

// Połączenie z bazą danych
$server = "localhost";
$dbpass = "";
$dbuser = "root";
$db = "szkola";

$conn = mysqli_connect($server, $dbuser, $dbpass, $db);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}

// Funkcja do zapisywania zmienionego tekstu
function saveEditedText($lessonNumber, $editedText, $conn) {
    $update_text_query = "UPDATE lekcje SET tresc = ? WHERE ID_lekcji = ?";
    $stmt = mysqli_prepare($conn, $update_text_query);
    mysqli_stmt_bind_param($stmt, "si", $editedText, $lessonNumber);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
}

if(isset($_POST['lesson_number']) && isset($_POST['edited_text'])) {
    $lessonNumber = $_POST['lesson_number'];
    $editedText = $_POST['edited_text'];
    saveEditedText($lessonNumber, $editedText, $conn);
    echo "Zmiany zostały zapisane.";
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

        .button-green {
            background-color: green;
        }
    </style>
   
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
            $tytul = $row['tytul_kursy']; // Pobranie tytułu kursu

            // Sprawdzenie czy zalogowany użytkownik ma dostęp do tego kursu
            if($login == $row['login']){
                echo "<div id='m'>";
                echo "<div  class='divy'><h1>{$row['tytul_kursy']}</h1></div>";
                echo "<form action='' method='post'>";
                // Dodanie checkboxów lekcji
                for ($i = 1; $i <= 10; $i++) {
                    $lesson_number = $i;
                    // Pobranie statusu lekcji z bazy danych
                    $status_query = "SELECT status_lekcji FROM status WHERE login = '$login' AND lekcja = $lesson_number AND tytul = '$tytul'";
                    $status_result = mysqli_query($conn, $status_query);
                    $status_row = mysqli_fetch_assoc($status_result);
                    $status = $status_row['status_lekcji'] ?? '0';
                    $button_class = ($status == '1') ? 'button-green' : '';
                    echo "<div>";
                    echo "<label class='checkbox-label' for='checkbox_true_$i'>Zrobione:</label>";
                    echo "<input id='checkbox_true_$i' type='checkbox' name='checkbox_true_$i' value='1' onchange='toggleButtonColor(\"$tytul\", $lesson_number, this.checked)' />";
                    echo "<label class='checkbox-label' for='checkbox_false_$i'>Niezrobione:</label>";
                    echo "<input id='checkbox_false_$i' type='checkbox' name='checkbox_false_$i' value='1' onchange='toggleButtonColor(\"$tytul\", $lesson_number, !this.checked)' />";
                    echo "<input type='submit' id='$tytul' name='lesson' value='Lekcja $i' class='divy $button_class'></div>";
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
                            // Sprawdzenie uprawnień użytkownika
                            if($_SESSION['upr'] != "pracownik" && $_SESSION['upr'] != "admin"){
                                echo "<div id='z' contenteditable='false'><p>{$lesson_row['tresc']}</p></div>";
                            } else {
                                echo "<div id='z' contenteditable='true'><p>{$lesson_row['tresc']}</p></div>";
                            }
                            echo "<input type='hidden' name='lesson_number' value='$lesson_number'>"; // Dodanie ukrytego pola z numerem lekcji
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

<!-- Dodanie kodu JavaScript -->
<script>
 // Funkcja zmieniająca kolor przycisku na podstawie stanu checkboxa
    function toggleButtonColor(tytul, lessonNumber, isChecked) {
        var button = document.getElementById(tytul);
        var isGreen = button.classList.contains('button-green'); // Sprawdź, czy przycisk jest aktualnie zielony
        if (isChecked && !isGreen) {
            button.classList.add('button-green'); // Dodaj klasę, aby zmienić kolor na zielony
        } else if (!isChecked && isGreen) {
            button.classList.remove('button-green'); // Usuń klasę, aby wrócić do poprzedniego koloru
        }

        // Aktualizuj stan checkboxa w bazie danych
        var formData = new FormData();
        formData.append('tytul', tytul);
        formData.append('lesson', lessonNumber);
        formData.append('checkbox_value', isChecked ? '1' : '0');

        fetch('update_checkbox.php', {
            method: 'POST',
            body: formData
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.text();
        })
        .then(data => {
            console.log(data);
        })
        .catch(error => {
            console.error('There was a problem with your fetch operation:', error);
        });
    }

    // Przywróć stan zaznaczenia checkboxów na podstawie danych z bazy danych
    window.onload = function() {
        <?php
        // Pobierz stan checkboxów z bazy danych
        $checkbox_states = array();
        $query = "SELECT lekcja, status_lekcji FROM status WHERE login = '$login'";
        $result = mysqli_query($conn, $query);
        while ($row = mysqli_fetch_assoc($result)) {
            $checkbox_states[$row['lekcja']] = $row['status_lekcji'];
        }
        
        // Ustaw kolor przycisków na podstawie wartości z bazy danych
        foreach ($checkbox_states as $lessonNumber => $status) {
            $tytul = $_SESSION['tytul'];
            $buttonId = $tytul;
            $button = "document.getElementById('$buttonId')";
            echo "var isChecked = $status === '1';";
            echo "var isGreen = $status === '1';";
            echo "if (isChecked && !isGreen) {";
            echo "    $button.classList.add('button-green');";
            echo "} else if (!isChecked && isGreen) {";
            echo "    $button.classList.remove('button-green');";
            echo "}";
        }
        ?>
    };

    // Obsługa zapisu zmienionego tekstu
    document.getElementById('z').addEventListener('blur', function() {
        var lessonNumber = document.querySelector('input[name="lesson_number"]').value;
        var editedText = this.innerHTML;
        var formData = new FormData();
        formData.append('lesson_number', lessonNumber);
        formData.append('edited_text', editedText);

        fetch('kursy.php', { 
            method: 'POST',
            body: formData
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.text();
        })
        .then(data => {
            console.log(data); // Możesz dodać obsługę odpowiedzi z serwera, np. wyświetlenie komunikatu o powodzeniu
        })
        .catch(error => {
            console.error('There was a problem with your fetch operation:', error);
        });
    });
</script>

</body>
</html>
