<?php
	require_once('models/popcorn.php');
	require_once('views/content-render/select-movie-byId.html');

	$movie = getMovie($_GET['id']);