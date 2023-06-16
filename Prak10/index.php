<?php
echo "<h1>Hello World<h1/>";

//var
$nama="Supri";
echo $nama;
echo "<br>";
// operator
$bilangan1=58;
$bilangan_satu=11;

//buat operator
$jumlah = $bilangan1 + $bilangan_satu;

echo "hasil ".$bilangan1. "+" .$bilangan_satu."=" .$jumlah;

// control flow
$nilai = 90;
$nilai_huruf = "";
if($nilai > 90){
$nilai_huruf = "A";
} else if ($nilai <= 90 && $nilai > 80){
    $nilai_huruf ="B";
}else if ($nilai <= 80 && $nilai > 70){
    $nilai_huruf ="C";
}else if ($nilai <= 70 && $nilai > 50){
    $nilai_huruf ="D";
}
echo "<br>";
echo "Nilai penjenengan " .$nilai_huruf;


//array 
$mobil = array('Kijang','Toyota','Nissan','BMW');

//menampilkan array
echo "<br>";
print_r($mobil);
echo "<br>";
echo $mobil[1];

//pengulangan
for ($i=0; $i < count($mobil) ; $i++) { 
    # code...
    echo "<br>";
    echo "Mobil ".$mobil[$i];
    
    if ($mobil[$i] == "BMW") {
        # code...
        echo "<br>";
        echo $mobil[$i]." ini mobil sultan";
    }

}