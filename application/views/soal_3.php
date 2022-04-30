<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title; ?></title>
</head>

<body>
  <h3>C. Konversi Kurs</h3>

  <p>Badut Valas - Jual beli mata uang <?= $timestamp; ?></p>
  <?php
  // usd & sgd ->eur -> idr
  $sisa_usd = 120;
  $sisa_sgd = 350;

  // satuan eruo
  $usd_eur = $sisa_usd / $kurs->rates->USD;
  $sgd_eur = $sisa_sgd / $kurs->rates->SGD;

  // eur -> idr
  $usd_idr = $usd_eur * $kurs->rates->IDR;
  $sgd_idr = $sgd_eur * $kurs->rates->IDR;
  $total = $usd_idr + $sgd_idr;
  $admin = $total - 10000;

  // number to word

  $exp = explode('.', $admin);
  $convert = new NumberFormatter("ina", NumberFormatter::SPELLOUT);
  $idr_word = ucfirst($convert->format($exp[0]));
  ?>
  <table border="1">
    <tr>
      <th>No</th>
      <th>Nilai</th>
      <th>Mata Uang</th>
      <th>Nilai</th>
      <th>Mata Uang</th>
    </tr>
    <tr>
      <td>1</td>
      <td><?= number_format($sisa_usd); ?></td>
      <td>USD</td>
      <td><?= number_format($usd_idr); ?></td>
      <td>IDR</td>
    </tr>
    <tr>
      <td>2</td>
      <td><?= number_format($sisa_sgd); ?></td>
      <td>SGD</td>
      <td><?= number_format($sgd_idr); ?></td>
      <td>IDR</td>
    </tr>
  </table>
  <table>
    <tr>
      <td>Total dalam rupiah</td>
      <td><?= number_format($total); ?>,-</td>
    </tr>
    <tr>
      <td>Admin</td>
      <td>- 10.000,-</td>
    </tr>
    <tr>
      <td>Total diterima</td>
      <td><?= number_format($admin); ?>,-</td>
    </tr>
  </table>
  <p>Terbilang : <?= ucwords($idr_word); ?> Rupiah</p>
</body>

</html>