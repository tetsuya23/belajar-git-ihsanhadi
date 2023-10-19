<?php
$servername = "localhost";
$database = "test";
$username = "root";
$password = "";

// create connection
$conn = mysqli_connect($servername, $username, $password, $database);

// check connection
if (!$conn) {
	die("connection field: ". mysqli_connect_error());
}

// echo "connection successfully";
// mysqli_close($conn);

$sql = "SELECT * FROM buku";
// $sql = "SELECT * FROM `anggota` WHERE role LIKE '%USER%'";
// $sql = "SELECT * FROM `anggota` JOIN peminjaman ON peminjaman.id_anggota = anggota.id_anggota WHERE month(tgl_pinjam) = '06'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	// output data of each row
	while ($row = $result->fetch_assoc()) {
		echo "Buku : ".$row["isbn"]. " " . $row["judul"]. "<br>";
		// echo "nama : ".$row["nama"]. " dengan E-mail: " . $row["email"]. "<br>";
		// echo "nama : ".$row["nama"]. " Tanggal pinjam " . $row["tgl_pinjam"]. "<br>";
	}
} else{
	echo "0 result";
}
$conn->close();
?>