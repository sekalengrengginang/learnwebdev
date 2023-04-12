function getName() {

    let name = document.getElementById('name').value;
    alert('Hello ' + name);    
}

var a =20;
var b = 40;

function perkalian2(b){
    var a = b *2;
    return a;
}

document.write("Dua kali dari \n",b," adalah ",perkalian2(b),"\n nilai dari a adalah ",a,"\n");


var tabel = ["Supri","Fuad","Rusdi"];
document.write(`Element ke 2 dari tabel adalah ${tabel[2]}`)
