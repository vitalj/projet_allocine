<?php 
	require_once('models/popcorn.php');

	$directors = getDirectors();
	require_once('views/content-render/select-director.html');


