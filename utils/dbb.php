<?php
try{
  
    $bdd=new PDO('mysql:host=localhost;dbname=allocine','root','');
    }
    catch(Exeption $e)
    {      
    die('Erreur:'.$e->getMessage());
    }
    

?>