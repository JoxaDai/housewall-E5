<?php
// Inclure la connexion à la base de données
require_once('../includes/config.php'); // Assurez-vous que le chemin est correct

// Vérifier si l'ID de l'artiste est passé en paramètre
if (isset($_GET['id'])) {
    $artistId = $_GET['id'];

    // Requête pour récupérer les détails de l'artiste en fonction de son ID
    $query = "SELECT * FROM artists WHERE id = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, 'i', $artistId);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($artist = mysqli_fetch_assoc($result)) {
        // Affichage des détails de l'artiste
        echo "<h2>{$artist['nomA']}</h2>";
        echo "<img src='{$artist['img_artiste']}' alt='Photo de {$artist['nomA']}' />";
        echo "<p><strong>Pays d'origine:</strong> {$artist['pays_origine']}</p>";
        echo "<p><strong>Biographie:</strong> {$artist['bio']}</p>";
    } else {
        echo "Artiste non trouvé.";
    }
} else {
    echo "ID de l'artiste non spécifié.";
}
?>




