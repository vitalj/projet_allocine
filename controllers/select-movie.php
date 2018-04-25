<?php 
require_once('models/popcorn.php');
$movies = getMovies();
require_once('views/content-render/select-actor-byId.html');

