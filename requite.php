<?php


try{
  
$bdd=new PDO('mysql:host=localhost;dbname=allocine','root','');
}
catch(Exeption $e)
{      
die('Erreur:'.$e->getMessage());
}

/*
 $reponse=$bdd->prepare('SELECT film.titre, film.description, film.annee_sortie, realisateur.nom FROM film INNER JOIN realisateur ON realisateur.id=film.id_film');

 $reponse->execute();

 $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);

 
foreach($enregistrement as $row)
{
    echo $row [];
}
*/ 

/* Requete realistareur */
/*SELECT film.titre FROM film INNER JOIN realisateur_film ON film.id_film=realisateur_film.film_id WHERE realisateur_film.realisateur_id=2 */
//$reponse=$bdd->prepare('SELECT film.titre, film.annee_sortie, image_film.id_image FROM film INNER JOIN image_film ON image_film.id_image=film.id_film');
$reponse=$bdd->prepare('SELECT film.titre, film.annee_sortie, image FROM (film INNER JOIN image_film ON image_film.id_film=film.id_film) INNER JOIN image on image.id_image = image_film.id_image');
$reponse->execute();
$enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);

foreach($enregistrement as $row){?>  
  <p> <?php echo utf8_decode ($row["titre"]) ?> </p>
   <img src="../<?php echo $row["image"];?>" height="200"> 
   <p> <?php echo  $row["annee_sortie"] ?> </p>
   <input type="button" value="Plus d'info">
<?php

}
?>


 