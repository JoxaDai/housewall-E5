<?php
	include("includes/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

	function getInputValue($name) {
		if(isset($_POST[$name])) {
			echo $_POST[$name];
		}
	}
?>

<html>
<head>
<style>
    /* Style pour le conteneur d'images */
    .profilePicsContainer {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
    }

    /* Style pour les images de profil */
    .profilePic {
        width: 100px;
        height: 100px;
        cursor: pointer;
        border-radius: 50%;
        border: 2px solid transparent;
        transition: border-color 0.3s ease;
    }

    /* Style pour la sélection d'image */
    .profilePic.selected {
        border-color: blue;
    }

	/* Style pour cacher la liste déroulante native */
select.MusicGenresSelect { 
    position: relative;
    display: inline-block;
    background-color: #f2f2f2;
    border-radius: 4px;
    padding: 5px 10px;
    cursor: pointer;
}
/* Style pour le conteneur personnalisé */
.customSelect {
    position: relative;
    display: inline-block;
    background-color: #f2f2f2;
    border-radius: 4px;
    padding: 5px 10px;
    cursor: pointer;
}

/* Style pour l'élément affiché */
.customSelect span {
    display: block;
}

/* Style pour l'élément de sélection */
.customSelect select {
    display: none; /* Cacher la liste déroulante native */
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    opacity: 0;
    cursor: pointer;
}

/* Style pour l'image dans l'option sélectionnée */
.customSelect img {
    height : 25px;
	width: 20px; /* Ajustez la taille de l'image selon vos besoins */
    margin-right: 5px;
}



</style>

	<title>House Wall - Connexion</title>

	<link rel="stylesheet" type="text/css" href="assets/css/register.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
</head>
<body>
	<?php

	if(isset($_POST['registerButton'])) {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").hide();
					$("#registerForm").show();
				});
			</script>';
	}
	else {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").show();
					$("#registerForm").hide();
				});
			</script>';
	}

	?>
	

	<div id="background">

		<div id="loginContainer">

			<div id="inputContainer">
				<form id="loginForm" action="register.php" method="POST">
					<h2>Se connecter a votre compte :</h2>
					<p>
						<?php echo $account->getError(Constants::$loginFailed); ?>
						<label for="loginUsername">Nom utilisateur</label>
						<input id="loginUsername" name="loginUsername" type="text" placeholder="exemple : DidierTest" value="<?php getInputValue('loginUsername') ?>" required>
					</p>
					<p>
						<label for="loginPassword">Mot de passe </label>
						<input id="loginPassword" name="loginPassword" type="password" placeholder="Mot de passe" required>
					</p>

					<button type="submit" name="loginButton">Se connecter</button>

					<div class="hasAccountText">
						<span id="hideLogin">Vous n'avez pas de compte ? crée le dès maintenant ici!</span>
					</div>
					
				</form>



				<form id="registerForm" action="register.php" method="POST">
					<h2>Creation de profil</h2>
					<p>
						<?php echo $account->getError(Constants::$usernameCharacters); ?>
						<?php echo $account->getError(Constants::$usernameTaken); ?>
						<label for="username">Username</label>
						<input id="username" name="username" type="text" placeholder="exemple didiertest1 (pseudonyme)" value="<?php getInputValue('username') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$firstNameCharacters); ?>
						<label for="firstName">Nom</label>
						<input id="firstName" name="firstName" type="text" placeholder="exemple Monchamp" value="<?php getInputValue('firstName') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$lastNameCharacters); ?>
						<label for="lastName">Prenom</label>
						<input id="lastName" name="lastName" type="text" placeholder="exemple Didier" value="<?php getInputValue('lastName') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
						<?php echo $account->getError(Constants::$emailInvalid); ?>
						<?php echo $account->getError(Constants::$emailTaken); ?>
						<label for="email">Email</label>
						<input id="email" name="email" type="email" placeholder="exemple didiertest@gmail.com" value="<?php getInputValue('email') ?>" required>
					</p>

					<p>
						<label for="email2">Confirmer l'email</label>
						<input id="email2" name="email2" type="email" placeholder="exemple didiertest1@gmail.com" value="<?php getInputValue('email2') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$passwordsDoNoMatch); ?>
						<?php echo $account->getError(Constants::$passwordNotAlphanumeric); ?>
						<?php echo $account->getError(Constants::$passwordCharacters); ?>
						<label for="password">Mot de passe</label>
						<input id="password" name="password" type="password" placeholder="Mdp choisi" required>
					</p>

					<p>
						<label for="password2">Confirmer mot de passe</label>
						<input id="password2" name="password2" type="password" placeholder="votre mot de passe" required>
					</p>


	<p>
    <label for="profilePic">Photo de profil</label>
    <div class="profilePicsContainer">
        <?php
        // Répertoire contenant les images de profil
        $profilePicsDir = "assets/images/profile-pics/";
        // Liste des fichiers d'images de profil
        $profilePics = scandir($profilePicsDir);
        // Supprimer les fichiers '.' et '..' du tableau
        $profilePics = array_diff($profilePics, array('.', '..'));
        // Génération des options pour chaque image de profil
        foreach ($profilePics as $pic) {
            echo "<img src='$profilePicsDir$pic' class='profilePic' onclick='selectProfilePic(this)' />";
        }
        ?>
    </div>
    <select id="profilePic" name="profilePic" style="display: none;" required>
        <?php
        foreach ($profilePics as $pic) {
            echo "<option value='$profilePicsDir$pic'>$pic</option>";
        }
        ?>
    </select>
</p>


<script>
    // Fonction pour sélectionner une image
    function selectProfilePic(element) {
        // Retirer la classe 'selected' de toutes les images
        var profilePics = document.querySelectorAll('.profilePic');
        profilePics.forEach(pic => pic.classList.remove('selected'));
        
        // Ajouter la classe 'selected' à l'image cliquée
        element.classList.add('selected');
        
        // Afficher le select invisible pour la soumission du formulaire
        var select = document.getElementById('profilePic');
        select.style.display = 'block';
        
        // Sélectionner automatiquement l'option correspondant à l'image cliquée
        var optionValue = element.src.split('/').pop();
        var options = select.options;
        for (var i = 0; i < options.length; i++) {
            if (options[i].text === optionValue) {
                options[i].selected = true;
                break;
            }
        }
        
        // Récupérer l'URL de l'image sélectionnée
        var selectedPicURL = element.src;
        
        // Utiliser l'URL de l'image sélectionnée comme valeur dans le formulaire ou autre traitement
        console.log('Image sélectionnée : ' + selectedPicURL);
    }
</script>



<!-- Amélioration de la liste déroulante des genres musicaux -->
<p>
    <label for="genreSelect">Genre musical favoris (selection multiples)</label>
    <div class="customSelect">
        <span>Choisissez un / plusieurs</span>
        <select id="genreSelect" name="genreSelect" class="GenreSelect">
            <?php
            // Répertoire contenant les images de genre
            $genreImagesDir = "assets/images/img/";
            // Liste des fichiers d'images de genre
            $genreImages = scandir($genreImagesDir);
            // Supprimer les fichiers '.' et '..' du tableau
            $genreImages = array_diff($genreImages, array('.', '..'));
            // Génération des options pour chaque image de genre
            foreach ($genreImages as $image) {
                echo "<option value='$genreImagesDir$image'>$image</option>";
            }
            ?>
        </select>
    </div>
</p>


					<button type="submit" name="registerButton">S'INSCRIRE</button>

					<div class="hasAccountText">
						<span id="hideRegister">Vous avez finalement un compte ? connectez-vous.</span>
					</div>
					
				</form>


			</div>

			<div id="loginText">
				<h1>Rejoinez la communauté, et commencez à suivre le pas de la musique</h1>
				<h2>Écoutez plein de chansons gratuitement</h2>
	<ul>
		<li>Découvrez les sons dont vous allez tomber amoureux</li>
		<li>Créez vos propres playlists</li>
		<li>Suivez les artistes pour rester à jour</li>
		<li>Nouvauté régulière et évolution du catalogue d'albums</li>
	</ul>
<style>
    #platformIcons {
    margin-top: 20px;
}

#platformIcons img {
    width: 160px; /* Ajustez la taille des icônes selon vos besoins */
    height: 90px;
    margin-right: 10px; /* Espacement entre les icônes */
}

#platformIcons a {
    text-decoration: none;
    color: black;
}

#platformIcons a:hover {
    opacity: 0.7; /* Opacité réduite au survol */
}
</style>
    <!-- Icônes des plateformes populaires -->
<div id="platformIcons">
    <a href="#"><img src="assets/images/soundcloud.png" alt="SoundCloud"></a>
    <a href="#"><img src="assets/images/deezer.png" alt="Deezer"></a>
    <a href="#"><img src="assets/images/youtube-music.png" alt="Bandcamp"></a>
</div>




</body>
</html>