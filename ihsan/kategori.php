<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.rtl.min.css" integrity="sha384-nU14brUcp6StFntEOOEBvcJm4huWjB0OcIeQ3fltAfSmuZFrkAif0T+UtNGlKKQv" crossorigin="anonymous">

    <title>BMI KALKULATOR</title>
  </head>
  <body>
    <center><h1>BMI KALKULATOR</h1></center>
    <div class="container">
    	<div class="card">
    		<div class="card-body">
    			<form>
    				<div class="form-group">
    					<label>nama</label>
    					<input type="text" class="form-control" name="nama">
    				</div>
    				<div class="form-group">
    					<label>berat badan</label>
    					<input type="text" class="form-control" name="bb" required>
    				</div>
    				<div class="form-group">
    					<label>tinggi badan</label>
    					<input type="text" class="form-control" name="tb" required>
    				</div>
    				<button type="submit" class="btn btn-primary btn-sm" name="hitung">Hitung</button>
    			</form>
    			
    		</div>
        <?php
         if (isset($_GET['hitung'])) {
              $nama = $_GET['nama'];
              $tb = $_GET['tb']/100;
              $bb = $_GET['bb'];
              $hasil = $bb / ($tb * $tb);

              // if ($hasil <= 18.5) {
              //   echo 'Halo, '.$nama.' . nilai BMI anda adalah '.number_format($hasil,1).' , anda termasuk kurus';
              // }elseif ($hasil <= 25) {
              //   echo 'Halo, '.$nama.' . nilai BMI anda adalah '.number_format($hasil,1).' , anda termasuk normal';
              // }elseif ($hasil <= 30) {
              //   echo 'Halo, '.$nama.' . nilai BMI anda adalah '.number_format($hasil,1).' , anda termasuk gemuk';
              // }
              if ($hasil <= 18.5) {
                echo 'Halo, '.$nama.' . nilai BMI anda adalah '.number_format($hasil,1).' , anda termasuk kurus';
              }elseif ($hasil <= 29.9) {
                echo 'Halo, '.$nama.' . nilai BMI anda adalah '.number_format($hasil,1).' , anda termasuk normal';
              }elseif ($hasil > 30) {
                echo 'Halo, '.$nama.' . nilai BMI anda adalah '.number_format($hasil,1).' , anda termasuk gemuk';
              }
         }
        ?>    		
    	</div>
    	
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>