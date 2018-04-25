<?php 
	require_once('../models/popcorn.php');
	require_once('../views/content-render/select-gender-byId.html');

	$gender = getGender($_GET['id']);