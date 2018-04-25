<?php 

require_once('utils/db.php');


/*LISTE DE TOUS LES TITRES DE FILMS */

function getMovies(){
  global $bdd;
  $reponse=$bdd->prepare('SELECT film.titre FROM film');
  
  $reponse->execute();
  $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);

  return $enregistrement;
}

/*DONNE LA CARTE D'IDENTITÉ DU FILM DEPUIS LA LISTE DES TITRES*/

    function getMovie()
    {
      global $bdd;
      $reponse=$bdd->prepare(" SELECT  film.id_film, film.titre, film.annee_sortie, film.description FROM film ");
     
      $reponse->execute();
      $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
      
      foreach($enregistrement as $row)
      {
        $list[]=[
          "id_film"=>$row["id_film"],
          "titre"=>$row["titre"],
          "annee_sortie"=>$row["annee_sortie"],
          "description"=>$row["description"],
          "genre"=>  getGender($row["id_film"]),
          "nom_acteur"=> getActor($row["id_film"]),
          "nom"=>getDirector($row["id_film"]),
          "image"=> getImage($row["id_film"])
        ];
      }
      return $list;
    }


    
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

    function getGender($id_film)
    {
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT group_concat(genre.genre) as genre FROM (genre INNER JOIN genre_id ON genre.id_genre=genre_id.genre_id) INNER JOIN film ON film.id_film=genre_id.film_id WHERE genre_id.genre_id=:idGender');
        $reponse->bindParam(':idGender', $id_film, PDO::PARAM_INT);
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

    function getActor($id_film)
    {
        global $bdd;
        $reponse=$bdd->prepare("SELECT group_concat( acteur.nom_acteur) as nom_acteur  FROM (acteur INNER JOIN acteur_film ON acteur.id=acteur_film.acteur_id) INNER JOIN film ON film.id_film=acteur_film.film_id WHERE acteur_film.acteur_id=:idActor");
        $reponse->bindParam(":idActor", $id_film, PDO::PARAM_INT);
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

    function getDirector($id_film){
        global $bdd;
        $reponse=$bdd->prepare(
            'SELECT group_concat(realisateur.nom) as nom FROM (realisateur INNER JOIN realisateur_film ON realisateur.id=realisateur_film.realisateur_id) INNER JOIN film ON film.id_film=realisateur_film.film_id WHERE realisateur_film.realisateur_id=:idRealisateur');
        $reponse->bindParam(":idRealisateur", $id_film, PDO::PARAM_INT);
        $reponse->execute();
        $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
        
        return $enregistrement;
      }

      

      /*Function show image */
      function getImage($id_film){
      global $bdd;
      $reponse=$bdd->prepare("SELECT image.image FROM (film INNER JOIN image_film ON image_film.id_film=film.id_film) INNER JOIN image on image.id_image = image_film.id_image");
      $reponse->bindParam(":idActor", $id_film, PDO::PARAM_INT);
      $reponse->execute();
      $enregistrement=$reponse->fetchAll(PDO::FETCH_ASSOC);
      
      return $enregistrement;    
    }
 

?>
 
