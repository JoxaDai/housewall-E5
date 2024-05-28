<?php
include("includes/includedFiles.php");
?>

<div class="userDetails">
	<div class="container borderBottom">
		<h2>Mettre a jour l' EMAIL</h2>
		<input type="text" class="email" name="email" placeholder="Adresse email..." value="<?php echo $userLoggedIn->getEmail(); ?>">
		<span class="message"></span>
		<button class="button" onclick="updateEmail('email')">Sauvegarder</button>
	</div>

	<div class="container">
		<h2>Mettre a jour le mot de passe</h2>
		<input type="password" class="oldPassword" name="oldPassword" placeholder="Mdp actuel">
		<input type="password" class="newPassword1" name="newPassword1" placeholder="Nouveau mdp">
		<input type="password" class="newPassword2" name="newPassword2" placeholder="Confirmer le mot de passe">
		<span class="message"></span>
		<button class="button" onclick="updatePassword('oldPassword', 'newPassword1', 'newPassword2')">Sauvegarder</button>
	</div>
</div>