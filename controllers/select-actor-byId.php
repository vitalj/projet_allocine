<?php 
	require_once('models/popcorn.php');
	require_once('views/content-render/select-actor-byId.html');

	$actor = getActor($_GET['id']);