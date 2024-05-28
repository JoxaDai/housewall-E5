<?php
	class Album {

		private $con;
		private $id;
		private $titre;
		private $artiste;
		private $genre;
		private $artAlbum;

		public function __construct($con, $id) {
			$this->con = $con;
			$this->id = $id;

			$query = mysqli_query($this->con, "SELECT * FROM albums WHERE id='$this->id'");
			$album = mysqli_fetch_array($query);

			$this->titre = $album['titre'];
			$this->artiste = $album['artiste'];
			$this->genre = $album['genre'];
			$this->artAlbum = $album['artAlbum'];


		}

		public function getTitle() {
			return $this->titre;
		}

		public function getArtist() {
			return new Artist($this->con, $this->artiste);
		}

		public function getGenre() {
			return $this->genre;
		}

		public function getArtworkPath() {
			return $this->artAlbum;
		}

		public function getNumberOfSongs() {
			$query = mysqli_query($this->con, "SELECT id FROM musique WHERE album='$this->id'");
			return mysqli_num_rows($query);
		}

		public function getSongIds() {

			$query = mysqli_query($this->con, "SELECT id FROM musique WHERE album='$this->id' ORDER BY OrdreAlbum ASC");

			$array = array();

			while($row = mysqli_fetch_array($query)) {
				array_push($array, $row['id']);
			}

			return $array;

		}






	}
?>