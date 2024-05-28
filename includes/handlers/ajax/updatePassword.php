<?php
include("../../config.php");

if(!isset($_POST['username'])) {
    echo "ERROR: Ne peux pas enregistrer l'utilisateur";
    exit();
}

if(!isset($_POST['oldPassword']) || !isset($_POST['newPassword1'])  || !isset($_POST['newPassword2'])) {
    echo "Des / Un mot de passe est manquant";
    exit();
}

if($_POST['oldPassword'] == "" || $_POST['newPassword1'] == ""  || $_POST['newPassword2'] == "") {
    echo "Le nouveau mot de passe est identique à l'ancien !";
    exit();
}

$username = $_POST['username'];
$oldPassword = $_POST['oldPassword'];
$newPassword1 = $_POST['newPassword1'];
$newPassword2 = $_POST['newPassword2'];

// Hash the old password using SHA256
$oldHash = hash('sha256', $oldPassword);

$passwordCheck = mysqli_query($con, "SELECT * FROM users WHERE username='$username' AND password='$oldHash'");
if(mysqli_num_rows($passwordCheck) != 1) {
    echo "Mot de passe incorrect";
    exit();
}

if($newPassword1 != $newPassword2) {
    echo "Votre nouveau mot de passe n'est pas identique";
    exit();
}

if(preg_match('/[^A-Za-z0-9]/', $newPassword1)) {
    echo "Votre mot de passe ne peut contenir que des lettres et des chiffres";
    exit();
}

if(strlen($newPassword1) > 30 || strlen($newPassword1) < 5) {
    echo "Le mot de passe doit avoir entre 5 et 30 caractères";
    exit();
}

// Hash the new password using SHA256
$newHash = hash('sha256', $newPassword1);

$query = mysqli_query($con, "UPDATE users SET password='$newHash' WHERE username='$username'");
echo "Mise à jour réussie !";

?>
