<?php
	
	class User {

		private $con;
		private $username;

		public function __construct($con, $username) {
			$this->con = $con;
			$this->username = $username; // utiliser le même nom de variable
		}

		public function getUsername() {
			return $this->username;
		}
		
		public function getEmail() {
			$query = mysqli_query($this->con, "SELECT email FROM users WHERE nomU='$this->username'"); 
			$row = mysqli_fetch_array($query);
			return $row['email'];
		}

		public function getFirstAndLastName() {
			$query = mysqli_query($this->con, "SELECT concat(nom, ' ', prenom) as 'nomU' FROM users WHERE nomU='$this->username'");  
			$row = mysqli_fetch_array($query);
			return $row['nomU'];
		}
		public function getProfilePic() {
			$query = mysqli_query($this->con, "SELECT profilePic FROM users WHERE nomU='$this->username'"); 
			$row = mysqli_fetch_array($query);
			return $row['profilePic'];
		}
	}

?>
