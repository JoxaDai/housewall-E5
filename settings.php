<?php
include("includes/includedFiles.php");
?>

<div class="entityInfo">
	
	<div class="centerSection">
		<div class="userInfo">
			<!-- Afficher le nom de l'utilisateur -->
			<h1><?php echo $userLoggedIn->getFirstAndLastName(); ?></h1>
			<!-- Afficher l'image de profil de l'utilisateur -->
			<?php
			// Récupérer l'URL de l'image de profil de l'utilisateur
			$profilePicURL = $userLoggedIn->getProfilePic(); // avoir une méthode getProfilePic() dans votre classe utilisateur
			?>
			<img src="<?php echo $profilePicURL; ?>" class="profilePic" alt="Photo de profil" widght="100px" height="100px"</img>
		</div>
	</div>

	<div class="buttonItems">
		<!-- Ajouter des boutons pour les fonctionnalités supplémentaires -->
		<button class="button" onclick="openPage('updateDetails.php')">Details de l'utilisateur</button>
		<button class="button" onclick="logout()">SE DECONNECTER</button>
	</div>

</div>
