<?php
include("includes/includedFiles.php");

if(isset($_GET['id'])) {
    $albumId = $_GET['id'];
} else {
    header("Location: index.php");
}

$album = new Album($con, $albumId);
$artist = $album->getArtist();
?>


<div class="entityInfo">
    <div class="leftSection">
        <img src="<?php echo $album->getArtworkPath(); ?>">
    </div>
    <div class="rightSection">
        <h2><?php echo $album->getTitle(); ?></h2>
        <p>Par <?php echo $artist->getName(); ?></p>
        <p><?php echo $album->getNumberOfSongs(); ?> musiques</p>
    </div>
</div>

<div class="tracklistContainer">
    <ul class="tracklist">
        <?php
        $songIdArray = $album->getSongIds();

        $i = 1;
        foreach($songIdArray as $songId) {

            $albumSong = new Song($con, $songId);
            $albumArtist = $albumSong->getArtist();

            echo "<li class='tracklistRow'>
                    <div class='trackCount'>
                        <img class='play' src='assets/images/icons/play-white.png' onclick='setTrack(\"" . $albumSong->getId() . "\", tempPlaylist, true)'>
                        <span class='trackNumber'>$i</span>
                    </div>

                    <div class='trackInfo'>
                        <span class='trackName'>" . $albumSong->getTitle() . "</span>
                        <span class='artistName'>" . $albumArtist->getName() . "</span>
                    </div>

                    <div class='trackOptions'>
                        <input type='hidden' class='songId' value='". $albumSong->getId() . "'>
                        <img class='optionsButton' src='assets/images/icons/more.png' onclick='showOptionsMenu(this)'>
                    </div>

                    <div class='trackDuration'>
                        <span class='duration'>" . $albumSong->getDuration() . "</span>
                    </div>
                </li>";

            // Commentaire sur une  chanson en particulier
            echo "<li class='commentRow'>
                    <form class='commentForm'>
                        <input type='hidden' name='id' value='" . $albumSong->getId() . "'>
                        <textarea name='comment' placeholder='Ajoute ton commentaire'></textarea>
                        <div class='rating'>
                            <label for='rating'>Rating:</label>
                            <select name='rating'>
                                <option value='1'>1</option>
                                <option value='2'>2</option>
                                <option value='3'>3</option>
                                <option value='4'>4</option>
                                <option value='5'>5</option>
                            </select>
                        </div>
                        <button type='submit'>Envoi</button>
                    </form>
                </li>";

            $i++;
        }
        ?>

        <script>
            var tempSongIds = '<?php echo json_encode($songIdArray); ?>';
            tempPlaylist = JSON.parse(tempSongIds);
            console.log(tempPlaylist);
        </script>
    </ul>
</div>

<nav class="optionsMenu">
    <input type="hidden" class="songId">
    <?php echo Playlist::getPlaylistDropdown($con, $userLoggedIn->getUsername()); ?>
</nav>


<script>
$(document).ready(function() {
    $(".commentForm").submit(function(e) {
        e.preventDefault();

        var form = $(this);
        var songId = form.find("input[name='NumPiste']").val();
        var comment = form.find("textarea[name='comTexte']").val();
        var rating = form.find("select[name='rating']").val();

        $.post("includes/handlers/ajax/addCom.php", {
            song_id: songId,
            comment: comment,
            rating: rating,
            user_id: <?php echo $userLoggedIn->getId(); ?>
        }).done(function(data) {
            var response = JSON.parse(data);
            alert(response.message);
            if(response.status == "success") {
                form.find("textarea[name='commentaire']").val("");
                form.find("select[name='rating']").val("5");
            }
        });
    });
});
</script>
