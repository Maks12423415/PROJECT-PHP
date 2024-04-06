<?php
session_start();

$login = $_SESSION['login'];

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
        function handleCheckboxChange(checkbox, input) {
            if (checkbox.checked) {
                input.style.backgroundColor = 'green';
            } else {
                input.style.backgroundColor = ''; // Reset to default color
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

$server = "localhost";
$dbpass = "";
$dbuser = "root";
$db = "szkola";

$conn = mysqli_connect($server, $dbuser, $dbpass, $db);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM `kursy`, users, rodzaje WHERE users.login=kursy.login AND kursy.tytul=rodzaje.tytul_kursy";
$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        $_SESSION['login'] = $row['login']; 
        $login = $_SESSION['login'];
        
        if($login == $row['login']){
            echo "<div id='m'>";
            
            echo "<div  class='divy'><h1>{$row['tytul_kursy']}</h1></div>";
            echo "<form action='' method='post'>";
            // Add lesson buttons with checkboxes
            for ($i = 1; $i <= 10; $i++) {
                echo "<div>";
                echo "<label class='checkbox-label' for='checkbox_$i'>Odznacz lekcję:</label>";
                echo "<input id='checkbox_$i' type='checkbox' onchange='handleCheckboxChange(this, this.nextElementSibling)' />";
                echo "<input type='submit' name='lesson' value='Lekcja $i' class='divy'></div>";
            }
            echo "</form>";
            echo "</div>";
            echo "<div id='n'>";
            // Display lesson content here
            if(isset($_POST['lesson'])) {
                $lesson_number = filter_input(INPUT_POST, 'lesson', FILTER_SANITIZE_NUMBER_INT);
                $lesson_query = "SELECT tresc FROM lekcje WHERE tytul = '{$row['tytul_kursy']}' AND ID_lekcji = $lesson_number";
                // echo "Debug: SQL Query: $lesson_query<br>"; // Output the generated SQL query for debugging
                $lesson_result = mysqli_query($conn, $lesson_query);
                if ($lesson_result) {
                    $lesson_row = mysqli_fetch_assoc($lesson_result);
                    //var_dump($lesson_row); // Output the fetched row for debugging
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
