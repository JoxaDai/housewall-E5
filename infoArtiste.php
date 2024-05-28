<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Housewall Info Artiste</title>
    <link rel="stylesheet" href="assets/css/styleBio.css">
</head>
<body>
    <div class="container">
        <h1>Artistes Recommandés</h1>
        <div class="artist-images">
            <?php
            require_once('includes/config.php');

            // Requête pour récupérer tous les artistes
            $queryAllArtists = "SELECT * FROM artists";
            $resultAllArtists = mysqli_query($con, $queryAllArtists);

            if ($resultAllArtists) {
                while ($artist = mysqli_fetch_assoc($resultAllArtists)) {
                    echo "<img src='assets/images/artiste/{$artist['img_artiste']}' alt='{$artist['nomA']}' class='artist-image' data-id='{$artist['id']}'>";
                }
            } else {
                echo "<p>Erreur lors de la récupération des artistes.</p>";
            }
            ?>
        </div>
        <div id="artist-details">
            <!-- Les détails de l'artiste sélectionné seront affichés ici -->
        </div>
    </div>

    <script>
        // Ajouter un gestionnaire d'événements pour les clics sur les images d'artiste
        document.querySelectorAll('.artist-image').forEach(img => {
            img.addEventListener('click', function() {
                const artistId = this.getAttribute('data-id');

                // Envoyer une requête AJAX pour récupérer les détails de l'artiste sélectionné
                const xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === XMLHttpRequest.DONE) {
                        if (xhr.status === 200) {
                            document.getElementById('artist-details').innerHTML = xhr.responseText;
                        } else {
                            console.error('Une erreur s\'est produite lors de la récupération des détails de l\'artiste.');
                        }
                    }
                };
                xhr.open('GET', 'assets/get_artist_details.php?id=' + artistId, true);
                xhr.send();
            });
        });
    </script>
</body>
</html>




