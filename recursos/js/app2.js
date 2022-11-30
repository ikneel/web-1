function random(min, max){
    return Math.floor((Math.random() * (max - min + 1)) + min)
}

console.log("1.- Codigo que pide nombre y lo imprime:");
var nombre = prompt("¿Cual es tu nombre?");
console.log("Tu nombre es:", nombre);

console.log("2.- Codigo que suma dos nuemros aleatorios en un rango de 0 a 10");
var num1 = random(0,10);
var num2 = random(0,10);
var suma = num1 + num2;
console.log("La suma de los numeros ", num1, " y ", num2, " es igual a: ", suma);

console.log("3.-Codigo que muestra como funciona funciona un IF")

if(num1 == num2){
    console.log("Num1 es ", num1, "y num2 es ", num2, " por lo tanto son iguales");
}
else{
    if(num1 > num2){
        console.log("Num1 es ", num1, " y num2 es ", num2, " por lo tanto num1 es mayor");
    }
    else{
        console.log("Num1 es ", num1, " y num2 es ", num2, " por lo tanto num2 es mayor" );
    }
}

console.log("4.- Codigo que nos diga si un numero aleatorio esta en un rango del 1 al 10");
numal = random(-20,20);
var c = 0;
for(let i = 1; i <= 10; i++){

    if (i == numal){       
        console.log("El numero aleatorio es igual a ", numal, " por lo que si esta en el rango de 1  a 10");
        c++;
    }
}
if(c == 0){
    console.log("El numero aleatorio es igual a ", numal, " por lo que no esta en el rango de 1  a 10")
}

console.log("5.- Codigo que nos dira si el numero que ingrsemos es el mismo que se genero aleatoriamente en un rango del 1 al 10");
let numal2 = random(1, 10);
let numing = prompt("Ingresa el numero que tu creas que se genero aleatoriamente");
if (numal2 == numing){
    console.log("El numero aleatorio es: ", numal2, " por lo que adivinaste el numero");
}
else{
    console.log("Lastima no pudiste adivinar el numero aleatorio que era: ", numal2);
}