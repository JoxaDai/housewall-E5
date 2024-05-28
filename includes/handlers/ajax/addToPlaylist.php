<?php
include("../../config.php");

if(isset($_POST['playlistId']) && isset($_POST['MusiqueId'])) {

	$playlistId = $_POST['playlistId'];
	$songId = $_POST['MusiqueId'];

	$orderIdQuery = mysqli_query($con, "SELECT MAX(playlistOrdre) + 1 as playlistOrdre FROM playlistSongs WHERE playlistId = '$playlistId'");

	$row = mysqli_fetch_array($orderIdQuery);
	$order = $row['playlistOrdre'];


	$query = mysqli_query($con, "INSERT INTO playlistSongs VALUES ('', '$songId', '$playlistId', '$order')");
}

else {
	echo "PlaylistId ou le MusiqueId n'as pas été engregistrer via la fonctionnalité addToPlaylist.php";
}



?>