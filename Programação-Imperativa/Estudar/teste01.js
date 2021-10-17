// let numeros= [1,2,3,[4],[[5,6]]];
// let novaArray=numeros.flat();
// console.log(numeros);
// console.log(novaArray);
// let novaArray2=numeros.flat(3);
// console.log(numeros);
// console.log(novaArray2) 

// let bola =[2,5,6,8,7];
// let resposta = bola.includes(6);
// console.log(resposta);

// let resto=4%2
// console.log(resto)

function num (n) {
	let resto =n%2
	return(resto===0?console.log("Par"):console.log("Impar"))
}

num(236)

num(947)

// function teste (num) {
// 	return(num%2===0?console.log("Par"):console.log("Impar."))
// }

// teste(236)

// teste(947)





num=(n)=>(n%2===0?console.log("Par"):console.log("Impar"))

num(236)

num(947)

// let moedas = [
//     {nome:"ab",simbolo:"abc"},
//     {nome:"ac",simbolo:"acc"},
//     {nome:"ad",simbolo:"adc"},
//     {nome:"ae",simbolo:"aec"}
// ];
// let consulta = moedas.find(function (moeda){
//     return moeda.nome === "ad";
// });
// console.log(consulta)