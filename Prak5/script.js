function eventPertama(nama) {
  alert("Hello" + nama);
}

function eventKedua() {
  let username = document.getElementById("username").value;
  let password = document.getElementById("password").value;

  if (username == "supri" && password == "1234") {
    alert("Login success");
  } else {
    alert("Login failed!");
  }
}

function eventKetiga(img) {
  img.src = "img/jokowimetal.jpg";
}
function eventKeempat(img) {
  img.src = "img/ph_1.jpg";
}

function cekNilai() {
  let nilai = document.getElementById("nilai").value;
  let note = document.getElementById("note");

  if (nilai >= 50) {
    note.innerHTML = "Lulus";
    note.style.color = "green";
  } else {
    note.innerHTML = "Tidak lulus";
    note.style.color = "red";
  }
}

const mobil = ['Toyota','Supra','Daihatsu','Honda'];
let text ="";
for (let i = 0; i < mobil.length; i ++) {
    text+="- " + mobil[i] + "<br>";
}
document.getElementById("canvas").innerHTML = text;
    