<?php
try{
  
    $bdd=new PDO('mysql:host=localhost;dbname=CSV_DB;charset=utf8','root','online@2017');
    }
    catch(Exeption $e)
    {      
    die('Erreur:'.$e->getMessage());
    }
    

?>