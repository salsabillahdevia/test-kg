<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $title; ?></title>
</head>

<body>
  <h3>B</h3>
  <p id="array"></p>
  <p id="total"></p>
  <script>
    var my_numbers = [1, 2, 3, 4, 5];

    // function total(my_numbers) {
    // var my_numbers = eval(form.my_numbers.value);
    var i = 0;
    var total_ganjil = 0;
    var total_genap = 0;
    var genap = my_numbers.filter(item => item % 2 === 0);
    var ganjil = my_numbers.filter(item => item % 2 === 1);
    for (i = 0; i < ganjil.length; i++) {
      if (ganjil[i] == 5) {
        total_ganjil += 5;
      } else {
        total_ganjil += 3;
      }
    }
    if (genap) {
      for (i = 0; i < genap.length; i++) {
        total_genap += 1;
      }
    }
    var total = total_ganjil + total_genap;
    // form.numbers.value = 'Input ' + my_numbers;
    // form.output.value = 'Output' + total;
    document.getElementById("array").innerText = 'Input :' + my_numbers;
    document.getElementById("total").innerText = 'Output :' + total;
    // document.getElementByName('submit').onclick = function(e) {
    //   alert('Input :' + my_numbers + ' | Output' + total);
    //   return false;
    // }
    // 'Input :' + my_numbers + ' | Output' + total;
    // }
  </script>
</body>

</html>