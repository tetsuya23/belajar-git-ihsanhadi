<?php

	function soal ($alas, $sisi, $panjang,  $lebar, $tinggi, $jari2, $rk, $rl, $rv){

		// soalnya
		echo "alas = 11 <br> sisi = 9<br>panjang = 7<br>r = 14<br>lebar = 5<br> tinggi = 3" ;
		echo "<hr>";
	
		//rumus bangun datar persegi
		$hl = $sisi * $sisi;
		$hk = 4 * $sisi;
		echo "Rumus Persegi<br>";
		echo "LUAS = sisi X sisi contoh $sisi * $sisi = $hl cm<sup>2</sup><br>" ;
		echo "KELILING = 4 X sisi contoh 4 * $sisi = $hk cm";
		echo "<hr>";

		//rumus bangun datar persegi panjang
		$hl = $panjang * $lebar;
		$hk = 2 * $panjang + 2 * $lebar ;
		echo "$rl dan $rk Persegi Panjang<br>";
		echo "LUAS = panjang X lebar contoh $panjang * $lebar = $hl cm<sup>2</sup> <br>" ;
		echo "KELILING = 2 X panjang + 2 X lebar contoh 2 * $panjang + 2 * $lebar = $hk cm";
		echo "<hr>";

		//rumus bangun datar segitiga
		$hl = 1/2 * $alas * $tinggi ;
		$hk = $alas + $sisi + $sisi ;
		echo "$rl dan $rk Segitiga<br>";
		echo "LUAS = 1/2 * alas * tinggi contoh 1/2 * $alas * $tinggi = $hl cm<sup>2</sup> <br>" ;
		echo "KELILING = alas + sisi + sisi contoh $alas + $sisi + $sisi = $hk cm";
		echo "<hr>";

		// rumus kubus
		$hl = 6 * ($sisi * $sisi) ;
		$hv =  $sisi * $sisi * $sisi ;
		echo "$rl dan $rv Kubus <br>";
		echo "LUAS = 6 X (sisi X sisi) sisi contoh 6 X ($sisi * $sisi) = $hl cm<sup>2</sup><br>" ;
		echo "VOLUME = sisi X sisi X sisi contoh $sisi* $sisi* $sisi = $hv cm<sup>3</sup>";
		echo "<hr>";

		// rumus bola
		$hl = 4* 22/7* $jari2**2 ;
		$hv = 4/3* 22/7* $jari2**2 ;
		echo "$rl dan $rv Bola <br>";
		echo "LUAS = 4 X π X r<sup>2</sup> contoh 4 X 22/7 * $jari2<sup>2</sup> = $hl cm<sup>2</sup><br>" ;
		echo "VOLUME = 4/3 X π X r<sup>2</sup> contoh 4/3 X 22/7 X $jari2<sup>2</sup> = $hv cm<sup>3</sup>";
		echo "<hr>";




	}
	soal(11, 9, 7, 5, 3, 14, 'Rumus Keliling', 'Rumus Luas', 'Rumus Volume' )
?>