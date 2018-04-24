<?php
	
	$url = explode('/', $_SERVER['REQUEST_URI'], 4); 
	// j'ai supprimé la limite car le array_supprimait de toute façon le dernier élément même si c'était inférieur a 5
	if(count($url) > 3){
		array_pop($url);
	}
	// var_dump($url);
	// echo "<br>";
	// var_dump($url);
	// echo "<br>";
	$path = implode('/', $url);
	var_dump($path);

	switch ($path) {
		case '/popcorn-studio':
		case '/popcorn-studio/' :
			require_once('controllers/home.php');
			break;

		case '/popcorn-studio/select-movie':
		case '/popcorn-studio/select-movie/':
			if(isset($_GET['id'])){
				require_once('controllers/select-movie-byId.php');
			}else
			require_once('controllers/select-movie.php');
			break;


		case '/popcorn-studio/select-gender':
		case '/popcorn-studio/select-gender/':
			
			if(isset($_GET['id'])){
				require_once('controllers/select-gender-byId.php');
			}else
			require_once('controllers/select-gender.php');
			break;
		

		case '/popcorn-studio/select-director':
		case '/popcorn-studio/select-director/':
			
			if(isset($_GET['id'])){
				require_once('controllers/select-director-byId.php');
			}else
			require_once('controllers/select-director.php');
			break;
		

		case '/popcorn-studio/select-actor':
		case '/popcorn-studio/select-actor/':
			
			if(isset($_GET['id'])){
				require_once('controllers/select-actor-byId.php');
			}else
			require_once('controllers/select-actor.php');
			break;
		
		
		default:
			
			require_once('controllers/404-error.php');
			break;

	}
