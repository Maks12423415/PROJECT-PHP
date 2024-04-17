<?php
session_start();

if($_SESSION['upr'] != "admin"){
    header("Location: ./index.php");
    exit(); // Always add an exit after header redirection
}

$server = "localhost";
$dbpass = "";
$dbuser = "root";
$db = "szkola";

$conn = mysqli_connect($server, $dbuser, $dbpass, $db);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}

if(isset($_POST['uprawnienia']) && isset($_POST['login'])){ // Check if both 'uprawnienia' and 'login' are set
    $login = $_POST['login']; // Correctly retrieving login from the form
    $new_upr = $_POST['uprawnienia'];
    
    $sql="UPDATE `users` SET `upr`=? WHERE login=? ";
    
    $stmt = mysqli_prepare($conn, $sql);
    
    if($stmt){
        mysqli_stmt_bind_param($stmt, "ss", $new_upr, $login);
        mysqli_stmt_execute($stmt);
    
        if(mysqli_stmt_affected_rows($stmt) > 0) {
            echo "";
        } else {
            echo "" . mysqli_stmt_error($stmt);
        }
    
        mysqli_stmt_close($stmt);
    } else {
        echo "" . mysqli_error($conn);
    }
}

if(isset($_POST['delete_user'])){
    $login = $_POST['login'];

    $sql = "DELETE FROM `users` WHERE login=?"; 

    $stmt = mysqli_prepare($conn, $sql);

    if($stmt){
        mysqli_stmt_bind_param($stmt, "s", $login); 
        mysqli_stmt_execute($stmt);

        if(mysqli_stmt_affected_rows($stmt) > 0) {
            echo "Użytkownik został usunięty.";
        } else {
            echo "Błąd usuwania użytkownika: " . mysqli_stmt_error($stmt);
        }

        mysqli_stmt_close($stmt);
    } else {
        echo "Błąd przygotowania zapytania: " . mysqli_error($conn);
    }
}

// Fetching users again for the second form
$sql = "SELECT login, upr FROM `users`";
$result = mysqli_query($conn, $sql);

if($result) // Check if $result is not null
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<div id="baner">

    <img id="logo" src="logo.png" alt="LANMAX">

    <?php
    //baner do wybierania podstron oraz znacznik konta uzytkownika

    include 'menu.php';

    ?>
</div>


<div id="dane">


    <form action="" method="post">
        <table id="tabela">
            <tr>
                <th>Wybierz użytkownika</th>
                <th>Wybierz uprawnienie</th>
            </tr>
            <tr>
                <td>
                    <?php 
                        if(mysqli_num_rows($result) > 0){
                            echo "<select name='login'>"; // Add name attribute
                            while($row = mysqli_fetch_assoc($result)){
                                echo "<option value='{$row['login']}'> {$row['login']} | {$row['upr']} </option>";
                            }
                            echo "</select>";
                        }
                    ?>
                </td>
                <td>
                    <select name="uprawnienia">
                        <option value="user">User</option>
                        <option value="pracownik">Pracownik</option>
                        <option value="admin">Admin</option>
                    </select>
                </td>
                <td><input type="submit" value="Zmień"></td>
            </tr>
        </table>
    </form>


    <form action="" method="post">
        <table>
            <tr>
                <th>Wybierz użytkownika</th>
            </tr>
            <tr>
                <td>
                    <?php
                        $result = mysqli_query($conn, $sql); // Fetch users again
                        if(mysqli_num_rows($result) > 0){
                            echo "<select name='login'>"; // Dodajemy name='login' aby przekazać login użytkownika
                            while($row = mysqli_fetch_assoc($result)){

                                echo "<option value='{$row['login']}'> {$row['login']} | {$row['upr']} </option>"; // Przypisujemy wartość loginu do atrybutu value

                            }
                            echo "</select>";
                        }
                    ?>
                </td>
                <td><input type="submit" name="delete_user" value="Usuń"></td> <!-- Dodajemy name='delete_user' aby oznaczyć, że formularz został wysłany -->
            </tr>
        </table>
    </form>
</div>
</body>
</html>
