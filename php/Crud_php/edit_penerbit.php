<html>
<head>
	<title>Edit Penerbit</title>
</head>

<?php
	include_once("connect.php");
	$id = $_GET['id_penerbit'];

	$buku = mysqli_query($mysqli, "SELECT * FROM buku");
    $penerbit = mysqli_query($mysqli, "SELECT * FROM penerbit WHERE id_penerbit='$id'");
    $pengarang = mysqli_query($mysqli, "SELECT * FROM pengarang");
    $katalog = mysqli_query($mysqli, "SELECT * FROM katalog");

    while($penerbit_data = mysqli_fetch_array($penerbit))
    {
    	$id = $penerbit_data['id_penerbit'];
    	$nama = $penerbit_data['nama_penerbit'];
    	$email = $penerbit_data['email'];
    	$telp = $penerbit_data['telp'];
    	$alamat = $penerbit_data['alamat'];
    	
    }
?>
 
<body>
	<a href="penerbit.php">Go to Penerbit</a>
	<br/><br/>
 
	<form action="edit_penerbit.php?id_penerbit=<?php echo $id; ?>" method="post">
		<table width="25%" border="0">
			<tr> 
				<td>ID Penerbit</td>
				<td style="font-size: 11pt;"><?php echo $id; ?> </td>
			</tr>
			<tr> 
				<td>Nama Penerbit</td>
				<td><input type="text" name="nama_penerbit" value="<?php echo $nama; ?>"></td>
			</tr>
			<tr> 
				<td>Email</td>
				<td><input type="text" name="email" value="<?php echo $email; ?>"></td>
			</tr>
			<tr> 
				<td>Telp</td>
				<td><input type="text" name="telp" value="<?php echo $telp; ?>"></td>
			</tr>
			<tr> 
				<td>Alamat</td>
				<td><input type="text" name="alamat" value="<?php echo $alamat; ?>"></td>
			</tr>
			<tr> 
				<td></td>
				<td><input type="submit" name="update" value="Update"></td>
			</tr>
		</table>
	</form>
	
	<?php
	 
		// Check If form submitted, insert form data into users table.
		if(isset($_POST['update'])) {

			$id = $_GET['id_penerbit'];
			$nama = $_POST['nama_penerbit'];
			$email = $_POST['email'];
			$telp = $_POST['telp'];
			$alamat = $_POST['alamat'];
						
			include_once("connect.php");

			$result = mysqli_query($mysqli, "UPDATE penerbit SET id_penerbit = '$id', nama_penerbit = '$nama', email = '$email', telp = '$telp', alamat = '$alamat' WHERE id_penerbit = '$id';");
			
			header("Location:penerbit.php");
		}
	?>
</body>
</html>