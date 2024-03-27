<?php
if(isset($_SESSION['upr']) && $_SESSION['upr'] == 'admin'){
    echo "<div class='linki'><a href='Admin.php'>ADMIN</a></div>";
}
?>

<?php
if(isset($_SESSION['zalogowano']) && !$_SESSION['zalogowano']){
    //echo " <a href='/Logowanie.php'>Logowanie  </a> ";
    echo "<div class='linki'><a href='Rejestracja.php'>REJESTRACJA</a></div>";
    echo "<div class='linki'><a href='Logowanie.php'>LOGOWANIE</a></div>";
} else {
    echo "<div class='linki'><a href='index.php'>MAIN</a></div>";
    echo "<div class='linki'><a href='kursy.php'>MOJE KURSY</a></div>" ;
    echo "<div class='linki'><a href='wylog.php'>WYLOGUJ</a></div>";
}
?>
