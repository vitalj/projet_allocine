<?php

require_once('utils/db.php');

/*LISTE DE TOUS LES TITRES DE FILMS */

function getMovies(){
  global $bdd;
  $reponse=$bdd->prepare('SELECT film.titreyes FROM film');

  $reponse->execute();
  $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);

  return $enregistrement;
}

/*DONNE LA CARTE D'IDENTITÉ DU FILM DEPUIS LA LISTE DES TITRES*/

// function getMovie();




    
    /*AFFICHER TOUS LES GENRES + TITRE DE FILMS*/
    function getGenders()
    {
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT genre.genre FROM genre');
        
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        return $enregistrement;   
    }
        
    /*AFFICHER UN GENRE PARTICULIER + TITRE DU FILM*/
    function getGender()
    {
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT genre.genre, film.titre FROM (genre INNER JOIN genre_id ON genre.id_genre=genre_id.genre_id) INNER JOIN film ON film.id_film=genre_id.film_id WHERE genre_id.genre_id=:idGender');
        $reponse->bindParam(':idGender', $_GET['id'], PDO::PARAM_INT);
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        return $enregistrement;
    }
       

       /*AFFICHER TOUS LES ACTEURS */

    function getActors()
    {
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT acteur.nom_acteur FROM acteur');
        
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        return $enregistrement;  
    }
        

    /*AFFICHER UN ACTEUR EN PARTICULIER + CES FILMS */

    function getActor()
    {
        global $bdd;
        $reponse=$bdd->prepare("SELECT acteur.nom_acteur, film.titre FROM (acteur INNER JOIN acteur_film ON acteur.id=acteur_film.acteur_id) INNER JOIN film ON film.id_film=acteur_film.film_id WHERE acteur_film.acteur_id=:idActor");
        $reponse->bindParam(":idActor", $_GET["id"], PDO::PARAM_INT);
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        return $enregistrement;    
    }

    function getDirectors(){
      global $bdd;
      $response=$bdd->prepare("SELECT realisateur.nom FROM realisateur");
      $response->execute();
      $enregistrement=$response->fetchAll(PDO::FETCH_ASSOC);

      return $enregistrement;
    }

    function getDirector(){
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT realisateur.nom, film.titre FROM (realisateur INNER JOIN realisateur_film ON realisateur.id=realisateur_film.realisateur_id) INNER JOIN film ON film.id_film=realisateur_film.film_id WHERE realisateur_film.realisateur_id=:idRealisateur');
        $reponse->bindParam(":idRealisateur", $_GET['id'], PDO::PARAM_INT);
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        return $enregistrement;
    }

?>
 