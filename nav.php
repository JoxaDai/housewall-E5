<?php 
include("includes/includedFiles.php");
?>


<h1 class="pageHeadingBig">Vous pouvez aussi aimer :</h1>

<div class="gridViewContainer">

	<?php
		$albumQuery = mysqli_query($con, "SELECT * FROM albums ORDER BY RAND() LIMIT 10");

		while($row = mysqli_fetch_array($albumQuery)) {
			



			echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"album.php?id=" . $row['id'] . "\")''>
						<img src='" . $row['artAlbum'] . "'>

						<div class='gridViewInfo'>"
							. $row['titre'] .
						"</div>
					</span>

				</div>";



		}
	?>

</div>

