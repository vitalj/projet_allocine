<?php 

require_once('../utils/dbb.php');
/* */
function reaMovieAll(){
global $bdd;
$reponse=$bdd->prepare('SELECT realisateur.nom, film.titre FROM (realisateur INNER JOIN realisateur_film ON realisateur.id=realisateur_film.realisateur_id) INNER JOIN film ON film.id_film=realisateur_film.film_id');

$reponse->execute();
$enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);


foreach($enregistrement as $row)

{

  echo utf8_encode($row ['nom'].':'.$row['titre'].'<br>');
  }
}

//reaMovieAll();

/**/
function reaMovie(){
    global $bdd;
    $reponse=$bdd->prepare(
        'SELECT realisateur.nom, film.titre FROM (realisateur INNER JOIN realisateur_film ON realisateur.id=realisateur_film.realisateur_id) INNER JOIN film ON film.id_film=realisateur_film.film_id WHERE realisateur_film.realisateur_id=1');
    
    $reponse->execute();
    $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
    
    
    foreach($enregistrement as $row)
    
    {
    
      echo utf8_encode($row ['nom'].':'.$row['titre'].'<br>');
      }
    }
  // reaMovie();


    
   
    /*afficher tous les genres + titre de films*/
    function gendersMovieAll()
    {
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT genre.genre, film.titre FROM (genre INNER JOIN genre_id ON genre.id_genre=genre_id.genre_id) INNER JOIN film ON film.id_film=genre_id.film_id');
        
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        
        foreach($enregistrement as $row)
        
        {
        
          echo utf8_encode($row ['genre'].':'.$row['titre'].'<br>');
          }
        }
       //gendersMovieAll();
        
    /* Afficher un genre particulier + titre du film*/
    function genderTitle()
    {
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT genre.genre, film.titre FROM (genre INNER JOIN genre_id ON genre.id_genre=genre_id.genre_id) INNER JOIN film ON film.id_film=genre_id.film_id WHERE genre_id.genre_id=1');
        
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        
        foreach($enregistrement as $row)
        
        {
        
          echo utf8_encode($row ['genre'].':'.$row['titre'].'<br>');
          }
        }
       //genderTitle();
       /*afficher toues les acteurs + film */
    function ActorMovieAll()
    {
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT acteur.nom_acteur, film.titre FROM (acteur INNER JOIN acteur_film ON acteur.id=acteur_film.acteur_id) INNER JOIN film ON film.id_film=acteur_film.film_id');
        
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        
        foreach($enregistrement as $row)
        
        {
        
          echo utf8_encode($row ['nom_acteur'].':'.$row['titre'].'<br>');
          }
        }
        //ActorMovieAll();

            /*afficher un acteur en particulier + ces films */
    function actorMovie()
    {
        global $bdd;
        $reponse=$bdd->prepare("SELECT acteur.nom_acteur, film.titre FROM (acteur INNER JOIN acteur_film ON acteur.id=acteur_film.acteur_id) INNER JOIN film ON film.id_film=acteur_film.film_id WHERE acteur_film.acteur_id=1");
        
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        
        foreach($enregistrement as $row)
        
        {
        
          echo utf8_encode($row ['nom_acteur'].':'.$row['titre'].'<br>');
          }
        }
       
       
        actorMovie();
?>
 