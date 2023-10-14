<center><h1>DAFTAR NILAI</h1></center>
<table align="center" border="1">
	<tr>
		<th>No.</th>
		<th>Nama</th>
		<th>Tanggal Lahir</th>
		<th>Umur</th>
		<th>Alamat</th>
		<th>Kelas</th>
		<th>Nilai</th>
		<th>Hasil</th>
	</tr>
	<?php
	
		$array = file_get_contents('data.json');
		$data = json_decode($array, true);
		$no=1;
		
		foreach ($data as $key => $value) {
			//umur
			$tgl_lahir = $value['tanggal_lahir'];
			$umur = new DateTime($tgl_lahir);
			$sekarang = new DateTime();
			$usia = $sekarang->diff($umur);

			//mengganti format tanggal lahir ke bahasa indonesia
			setlocale(LC_TIME, 'id_ID');
			$tanggal_lahir_id = strftime('%d %B %Y', strtotime($value['tanggal_lahir']));

			//hasil dari nilai
			$hasil = "";
			if ($value['nilai'] >=90) {
				$hasil = "A";
			} elseif ($value['nilai']>=80) {
				$hasil = "B";
			} elseif ($value['nilai']>=70) {
				$hasil = "C";
			} elseif ($value['nilai']>=50) {
				$hasil = "D";
			}
			echo "<tr>";
			echo "<td>".$no++."</td>";
			echo "<td>".$value['nama']."</td>";
			echo "<td>".$tanggal_lahir_id."</td>";
			echo "<td>".$usia->y." Tahun</td>";
			echo "<td>".$value['alamat']."</td>";
			echo "<td>".$value['kelas']."</td>";
			echo "<td>".$value['nilai']."</td>";
			echo "<td>".$hasil."</td>";
			echo "</tr>";
		}
	?>
	
</table>