<?php
include("../../config.php");

if(isset($_POST['utilisateur_id']) && isset($_POST['NumPiste']) && isset($_POST['comTexte']) && isset($_POST['rating'])) {
    $userId = $_POST['utilisateur_id'];
    $songId = $_POST['NumPiste'];
    $comment = $_POST['comTexte'];
    $rating = $_POST['rating'];

    $query = mysqli_query($con, "INSERT INTO commentaire (utilisateur_id, NumPiste, comTexte, rating) VALUES ('$userId', '$songId', '$comment', '$rating')");

    if($query) {
        echo json_encode(array("status" => "success", "message" => "Le commentaire a bien été ajouté."));
    } else {
        echo json_encode(array("status" => "error", "message" => "Erreur lors de l'ajout du commentaire."));
    }
} else {
    echo json_encode(array("status" => "error", "message" => "Veuillez remplir tous les champs!!"));
}
?>
