// variabel tanggal
// menampilkan tanggal
const tanggal = new Date();
var tahun = tanggal.getFullYear();
document.getElementById("canva").innerHTML = tanggal;
document.getElementById("canva2").innerHTML = tahun;

// variabel integer dibulatkan
let angka = 1.2;
let pembulatan = Math.round(angka);
document.getElementById("berhitung").innerHTML =
  angka + " dibulatkan " + pembulatan;

// menampilkan PI
const pi = Math.PI;
document.getElementById("pishow").innerHTML = pi;

// menampilkan string supri dengan lowercase
const nama = "Supri";

document.getElementById("string").innerHTML = nama.toUpperCase();

// array javascript

let dataCunny = ["Cunny", "😭", "😭", "😭", "CUNNY"];
document.getElementById("tampilkanarray").innerHTML =
  dataCunny + " panggil emoji menangis " + dataCunny[1];
// multidimensional array
let multidataNama = [
  ["Supri", 10],
  ["Budi", 12],
];

document.getElementById("arrayNama").innerHTML =
  "nama = " + [multidataNama[1][0]] + " umur = " + multidataNama[1][1];

//   kalkulator sederhana
let angka1 = 20;
let angka2 = 10;
let hasil =  angka1 + angka2;
document.getElementById("kalkulator").innerHTML =
  "jumlah " + angka1 + "+" + angka2 + " = " + (hasil);
