function imagen2(src, width, height, alt) {
    var a = document.createElement("img");
    a.src = src
    a.width = width;
    a.height = height;
    a.alt = alt;
    document.body.appendChild(a);
}
function imagen3(src, width, height, alt) {
    var a = document.createElement("img");
    a.src = src
    a.width = width;
    a.height = height;
    a.alt = alt;
    document.body.appendChild(a);
}

function despedida(){
    alert("Hasta luego");
}

console.log("Hola desde la consola");
console.log("Esto es un texto");
console.log(20);
console.log(2.6);
console.log(1,63);
console.log(1+2);
console.log(true);
console.log(false);