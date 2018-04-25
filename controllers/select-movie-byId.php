<?php
	require_once('models/popcorn.php');
	$movie = getMovie($_GET['id']);
	
	require_once('views/content-render/select-movie-byId.php');

	