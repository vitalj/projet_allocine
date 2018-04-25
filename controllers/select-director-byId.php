<?php 
	require_once('models/popcorn.php');
	$director = getDirector($_GET['id']);
	require_once('views/content-render/select-director-byId.html');

