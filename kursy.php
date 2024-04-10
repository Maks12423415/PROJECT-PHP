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
function saveEditedText($lessonNumber, $editedText, $tytul, $conn) {
    $update_text_query = "UPDATE lekcje SET tresc = ? WHERE ID_lekcji = ? AND tytul = ?";
    $stmt = mysqli_prepare($conn, $update_text_query);
    mysqli_stmt_bind_param($stmt, "sis", $editedText, $lessonNumber, $tytul);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
}

if(isset($_POST['lesson_number']) && isset($_POST['edited_text'])) {
    $lessonNumber = $_POST['lesson_number'];
    $editedText = $_POST['edited_text'];
    $tytul = $_POST['tytul']; // Pobranie aktualnego tytułu kursu
    saveEditedText($lessonNumber, $editedText, $tytul, $conn);
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
                // Dodanie checkboxów lekcji z obsługą zdarzenia onchange
                for ($i = 1; $i <= 10; $i++) {
                    $lesson_number = $i;
                    $status_query = "SELECT status_lekcji FROM status WHERE login = '$login' AND lekcja = $lesson_number AND tytul = '$tytul'";
                    $status_result = mysqli_query($conn, $status_query);
                    $status_row = mysqli_fetch_assoc($status_result);
                    $status = $status_row['status_lekcji'] ?? '0';
                    $button_class = ($status == '1') ? 'button-green' : '';
                    echo "<div>";
                    echo "<label class='checkbox-label' for='checkbox_true_$i'>Zrobione:</label>";
                    echo "<input id='checkbox_true_$i' type='checkbox' name='checkbox_true_$i' value='1' onchange='handleCheckboxChange($lesson_number, true, \"$tytul\")' />";
                    echo "<label class='checkbox-label' for='checkbox_false_$i'>Niezrobione:</label>";
                    echo "<input id='checkbox_false_$i' type='checkbox' name='checkbox_false_$i' value='0' onchange='handleCheckboxChange($lesson_number, false, \"$tytul\")' />";
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
                            echo "<input type='hidden' name='tytul' value='$tytul'>"; // Dodanie ukrytego pola z aktualnym tytułem kursu
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
    // Obsługa zapisu zmienionego tekstu
    document.getElementById('z').addEventListener('blur', function() {
        var lessonNumber = document.querySelector('input[name="lesson_number"]').value;
        var editedText = this.innerHTML;
        var tytul = document.querySelector('input[name="tytul"]').value; // Pobranie aktualnego tytułu kursu
        var formData = new FormData();
        formData.append('lesson_number', lessonNumber);
        formData.append('edited_text', editedText);
        formData.append('tytul', tytul); // Przekazanie aktualnego tytułu kursu

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

    // Obsługa zaznaczania/odznaczania checkboxów
    function handleCheckboxChange(lessonNumber, isChecked, tytul) {
        toggleButtonColor(tytul, lessonNumber, isChecked); // Aktualizacja koloru przycisku
        updateLessonStatus(lessonNumber, isChecked, tytul); // Aktualizacja stanu lekcji w bazie danych
    }

    // Funkcja aktualizująca stan lekcji w bazie danych
    function updateLessonStatus(lessonNumber, isChecked, tytul) {
        var formData = new FormData();
        formData.append('lesson_number', lessonNumber);
        formData.append('checkbox_value', isChecked ? '1' : '0');
        formData.append('tytul', tytul);

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
            console.log(data);
        })
        .catch(error => {
            console.error('There was a problem with your fetch operation:', error);
        });
    }
</script>

</body>
</html>
