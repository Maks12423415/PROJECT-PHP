
<?php
if($_SESSION['upr'] == 'admin'){
    echo " <a href='/admin.php'>admin </a>";
}
?>

<?php
if(!$_SESSION['zalogowano']){
    //echo " <a href='/Logowanie.php'>Logowanie  </a> ";
    echo "<a href='Rejestracja.php'>Rejestracja</a>";
}else{
        echo " <a href='index.php'>Strona Główna</a>";
        echo  "<a href='kursy.php'>Kursy</a>" ;
        echo  "<a href='wylog.php'>Wyloguj</a>";
        
}
?>
