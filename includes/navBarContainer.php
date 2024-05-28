<div id="navBarContainer">
	<nav class="navBar">

		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<img src="assets/images/icons/logo.png">
		</span>


		<div class="group">

			<div class="navItem">
				<span role='link' tabindex='0' 
					onclick="openPage('recherche.php')" class="navItemLink">
					Recherche
					<img src="assets/images/icons/search.png" class="icon" alt="Search">
				</span>
			</div>

		</div>

		<div class="group">
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('nav.php')" class="navItemLink">Parcourir
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('votrePlaylist.php')" class="navItemLink">Votre espace musique
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('infoArtiste.php')" class="navItemLink">Informations artistes
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('MAJ_Site.php')" class="navItemLink">Mise a jours
				</span>
			</div>


			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink"><?php echo $userLoggedIn->getFirstAndLastName(); ?>
				</span>
			</div>
		</div>




	</nav>
</div>