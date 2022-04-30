<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title; ?></title>
</head>

<body>
  <h3>A</h3>
  <b>1. Total buku terjual sebanyak <?= $total_terjual['jumlah']; ?></b>
  <br>
  <b>2. Total buku terjual dengan harga sebelum diskon sebesar Rp.<?= number_format($total_sebelum_diskon['total']); ?></b>
  <br>
  <b>3. Total buku terjual dengan harga setelah diskon sebesar Rp.<?= number_format($total_setelah_diskon['harga_setelah_diskon']); ?></b>
  <br>
  <b>4. Best Seller</b>
  <?php $no = 1;
  foreach ($best_seller as $data) : ?>
    <li><b><?= '#' . $no++ . ' ' . $data['judul']; ?></b> terjual sebanyak <b><?= $data['total']; ?></b> buku</li>
  <?php endforeach ?>
  <b>5. Berat buku rata-rata <?= $berat_rata2['total']; ?></b>
</body>

</html>