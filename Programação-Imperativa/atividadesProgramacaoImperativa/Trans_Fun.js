//Vamos Praticar?
//Transformando funções

// 1°
// function print(mensagem){
//     console.log(mensagem)
// }
// print("Olá, bom dia");

let print = mensagem => console.log(mensagem);
print("Óla, boa tarde");

// 2°
// function soma(n1, n2){
//     return n1 + n2
// }
// console.log(soma(10, 10));

let soma = (n1, n2) => n1 + n2;
console.log(soma(2, 10));

//outra forma.
let soma1 = (m1, m2) => console.log(m1 + m2);
soma1(5,4);