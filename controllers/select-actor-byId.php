<?php 
	require_once('models/popcorn.php');
	$actor = getActor($_GET['id']);
	require_once('views/content-render/select-actor-byId.html');

