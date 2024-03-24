<?php
if(isset($_SESSION['upr']) && $_SESSION['upr'] == 'admin'){
    echo " <a href='Admin.php'>ADMIN</a>";
}
?>

<?php
if(isset($_SESSION['zalogowano']) && !$_SESSION['zalogowano']){
    //echo " <a href='/Logowanie.php'>Logowanie  </a> ";
    echo "<a href='Rejestracja.php'>REJESTRACJA</a>";
    echo "<a href='Logowanie.php'>LOGOWANIE</a>";
} else {
    echo " <a href='index.php'>MAIN</a>";
    echo "<a href='kursy.php'>MOJE KURSY</a>" ;
    echo "<a href='wylog.php'>WYLOGUJ</a>";
}
?>
