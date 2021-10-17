// Array com números primos.
let numerosPrimos = [2, 3, 5, 7, 11, 13, 17, 19, 23];
// Array numeros que vai receber os valores da array numerosPrimos
// por um spread
let numeros = [...numerosPrimos, 29, 31, 37, 41];
console.log(numeros);

// Criar uma função maiorNumero() que receba N parâmetros e retorne
// o menor número entre eles, utilizando a função Math.min()
function maiorNumero(parametro){
    console.log(Math.min(...parametro));    
}
let grupoNumeros = [5, 6, 2.9, 2.8, 3]


console.log("1° Forma")
maiorNumero(grupoNumeros)

function maiorNumero2(...N){
    console.log(Math.min(...N));    
}

console.log("2° Forma")
maiorNumero2(5.1, 6, 8, 10)