<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title; ?></title>
</head>

<body>
  <h3>D. </h3>
  <p>Disini saya menambah default case jika angka/int bulan tidak ada di case nya.</p>
  <?php
  echo 'Jika int bulan tidak dalam range 1-12 akan mengembalikan nilai default yaitu ' . bulan(15) . ' karena terkadang ada kasus dimana ada perbedaan format date maupun kesalahan di sistem sehingga nilai int bulan tidak dalam range 1-12 <br><br>';
  function bulan($bln)
  {
    switch ($bln) {
      case 1:
        $bln = "Januari";
        break;
      case 2:
        $bln = "Februari";
        break;
      case 3:
        $bln = "Maret";
        break;
      case 4:
        $bln = "April";
        break;
      case 5:
        $bln = "Mei";
        break;
      case 6:
        $bln = "Juni";
        break;
      case 7:
        $bln = "Juli";
        break;
      case 8:
        $bln = "Agustus";
        break;
      case 9:
        $bln = "September";
        break;
      case 10:
        $bln = "Oktober";
        break;
      case 11:
        $bln = "November";
        break;
      case 12:
        $bln = "Desember";
        break;
      default:
        $bln = "Parameter bulan tidak valid <br>";
    }
    return $bln;
  }
  for ($x = 1; $x <= 12; $x++) {
    echo bulan($x) . "<br>";
  }
  ?>
</body>

</html>