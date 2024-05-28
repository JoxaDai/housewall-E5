<?php
	
	class Playlist {

		private $con;
		private $id;
		private $name;
		private $owner;

		public function __construct($con, $data) {


			if(!is_array($data)) {
				// Data is an id (string probably)
				$query = mysqli_query($con, "SELECT * FROM playlists WHERE id = '$data'");
				$data = mysqli_fetch_array($query);
			}
			$this->con = $con;
			$this->id = $data['id'];
			$this->name = $data['nomP']; // Adjusted to match the column name
			$this->owner = $data['auteur']; // Adjusted to match the column name
		}

		public function getName() {
			return $this->name;
		}
		public function getId() {
			return $this->id;
		}

		public function getOwner() {
			return $this->owner;
		}
		public function getNumberOfSongs() {
			$query = mysqli_query($this->con, "SELECT MusiqueId FROM playlistsongs WHERE playlistId = '$this->id'");
			return mysqli_num_rows($query);

		}

		public function getSongIds() {

			$query = mysqli_query($this->con, "SELECT MusiqueId FROM playlistsongs WHERE playlistId='$this->id' ORDER BY playlistOrdre ASC");

			$array = array();

			while($row = mysqli_fetch_array($query)) {
				array_push($array, $row['MusiqueId']);
			}

			return $array;

		}
		public static function getPlaylistDropdown($con, $username) {

			$dropdown = '<select class="item playlist">
		
							<option value = "">Ajouter a la playlist</option>';

			$query = mysqli_query($con, "SELECT id, nomP FROM playlists WHERE auteur='$username'");
			while($row = mysqli_fetch_array($query)) {
				$id = $row['id'];
				$name = $row['nomP'];
				$dropdown = $dropdown . "<option value='$id'>$name</option>";
			}

			return $dropdown . "</select>";
		}
	}

?>
