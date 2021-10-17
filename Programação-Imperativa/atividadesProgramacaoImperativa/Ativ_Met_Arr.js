console.log("\nSilvano Araujo Pereira");
console.log("\nVamos praticar-Métodos de arrays.");
// Crie um array de números pares, e utilizando a função .map() nesse array, crie um novo array com apenas números ímpares.
console.log("\nEx. 1");
let numerosPares = [2,4,8,10,14,20,26,30];
let numerosImpares = numerosPares.map(function impares(num){
    return num-1;
});
console.log(numerosImpares);

// Crie um array de nomes, que possua dois índices com o nome Maria. Utilize o .filter() para obter apenas esses dois 
// índices com o nome Maria.
console.log("\nEx. 2");
let nomes = ["Simone", "Ana", "Clara", "Maria", "Roberta", "Lucia","Maria"]
let nomesRepetidos = nomes.filter(function filtroPessoas(pessoa){
    return pessoa==="Maria";
});
console.log(nomesRepetidos)

// Crie um array de números e utilize a função .reduce() para devolver uma string com os números formatados.
// Exemplo [1,5,9,3,7] => “1 – 5 – 9 – 3 – 7”
console.log("\nEx. 3");
let numeroRe = [1,9,8,6,2,5,0,1];
let numeroString =numeroRe.reduce((total,num)=>{
    return ""+total+"-"+num;
});
console.log(numeroString)

// Crie um array de animais, após isso passe por cada índice utilizando o .forEach() e imprima a frase “O animal é
//  NOME_DO_ANIMAL”.
console.log("\nEx. 4");
let animais=["macaco", "leão", "cavalo", "galinha", "cobra"];
animais.forEach((nomAni)=>{
    console.log("O animal é "+ nomAni+".")
})
