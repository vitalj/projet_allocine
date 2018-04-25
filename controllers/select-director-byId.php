<?php 
	require_once('models/popcorn.php');
	require_once('views/content-render/select-director-byId.html');

	$director = getDirector($_GET['id']);