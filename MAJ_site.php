<?php
include("includes/config.php"); // Inclure le fichier de configuration de la base de données

// Récupérer les dernières mises à jour
$query = "SELECT title, artist, date_updated FROM updates ORDER BY date_updated DESC LIMIT 5";
$result = mysqli_query($con, $query);

if (!$result) {
    die("Échec de la récupération des mises à jour : " . mysqli_error($con));
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dernières Mises à Jour</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }
        .box {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            box-sizing: border-box;
            transition: transform 0.3s ease;
        }
        .box:hover {
            transform: translateY(-10px);
        }
        .box h3 {
            margin-top: 0;
            color: #333;
        }
        .box p {
            color: #666;
        }
        .box .date {
            font-size: 0.9em;
            color: #999;
        }
    </style>
</head>
<body>

<h1>Dernières Mises à Jour</h1>
<div class="container">
    <?php while ($row = mysqli_fetch_assoc($result)) : ?>
        <div class="box">
            <h3><?php echo htmlspecialchars($row['title']); ?></h3>
            <p>Par : <?php echo htmlspecialchars($row['artist']); ?></p>
            <p class="date">Mis à jour le : <?php echo htmlspecialchars($row['date_updated']); ?></p>
        </div>
    <?php endwhile; ?>
</div>

</body>
</html>
