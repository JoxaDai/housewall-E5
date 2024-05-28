<?php

include("../../config.php");

if(isset($_POST['playlistId']) && isset($_POST['MusiqueId'])) {

	$playlistId = $_POST['playlistId'];
	$songId = $_POST['MusiqueId'];


    $query = mysqli_query($con, "DELETE FROM playlistSongs WHERE playlistId = '$playlistId' AND MusiqueId='$songId'");
}

else {
	echo "PlaylistId ou songId ne sont pas passer par le formulaire removeFromPlaylist.php";
}



?>