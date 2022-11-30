const frutas = ["manzana"]
function agregar(fruta){
    frutas.push(fruta);
}
function quitar(fruta){
    for(let i = 0; i < frutas.length; i++){
        if(frutas[i] == fruta){
            frutas.splice(i, 1)
        }
    }
}
let valor = true;
while(valor){
    let eleccion = prompt("Escribe 'agregar' si es que deseas añadir otra fruta a la lista \n 'quitar' si es que deseas eliminar una fruta de la lista \n O 'salir' si ya no quieres modificar la lista");
    if (eleccion == "agregar"){
        let fruit = prompt("Ingresa el nombre la fruta que deseas añadir");
        agregar(fruit);
    }
    if(eleccion == "quitar"){
        let fruit = prompt("Ingresa el nombre de la fruta que quieres quitar");
        quitar(fruit);
    }
    if(eleccion == "salir"){
        valor = false;
    }
    console.log(frutas);
}

