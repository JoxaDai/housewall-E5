<?php
if(isset($_POST['loginButton'])) {
	//Si le bouton d'inscription est cliquer
	$username = $_POST['loginUsername'];
	$password = $_POST['loginPassword'];

	$result = $account->login($username, $password);

	if($result == true) {
		$_SESSION['userLoggedIn'] = $username;
		header("Location: nav.php");
	}

}
?>