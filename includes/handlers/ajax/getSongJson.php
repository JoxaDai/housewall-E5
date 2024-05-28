<?php
include("../../config.php");

if(isset($_POST['id'])) {
	$songId = $_POST['id'];

	$query = mysqli_query($con, "SELECT * FROM musique WHERE id='$songId'");

	$resultArray = mysqli_fetch_array($query);

	echo json_encode($resultArray);
}


?>