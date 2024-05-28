<?php
	ob_start();
	session_start();

	$timezone = date_default_timezone_set("Europe/Paris");

	$con = mysqli_connect("localhost", "root", "", "housewall");

	if(mysqli_connect_errno()) {
		echo "Erreur de connexion: " . mysqli_connect_errno();
	}
?>