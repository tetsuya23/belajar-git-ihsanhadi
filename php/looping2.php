<table border=1>
	<tr>
		<th>No</th>
		<th>Nama</th>
		<th>Kelas</th>
	</tr>
<?php
	for ($i=1, $j=10 ; $i <=10, $j >=1 ; $i++, $j--){
		echo "<tr>";
		echo "<td>$i</td>";
		echo "<td>Nama Ke $i</td>";
		echo "<td>kelas $j</td>";
		
	}
		
	
?>
</table>