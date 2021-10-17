// variável composta = array
// let bebida=["leite","água","coca-cola",["café","nescau","chá"],["açucar","adoçante","nada"]]
// // console.log( nomes.length )
// // console.log(bebida)
// console.log(bebida[0],bebida[3][1],bebida[4][2])
// console.log("abcde"[1])

// console.log(2!=="2")
// let num1=10;
// let num2=20;
// const num3=100;
// // num1 110
// num1+=num3;
// // 
// num2%=5;
// num2*=num3;
// num1++;
// num2--;
// console.log(num1)
// console.log(num2)
// console.log(num3)
// let salario = 4000.00
// // if (salario>=5000.00?salario=salario+salario*0.05:salario=salario+salario*0.1);
// // console.log(salario)
// if (salario<5000.00?salario+=salario*0.05:salario+=salario*0.1);
// console.log(salario)
// function calcular (numA, numB, operacao){
//     if (operacao=="+"){
//         return numA+numB;}
//     else {
//         return "impossível dividir";
//     }
// }
// let resultado= calcular("2",5,"+")
// console.log("resultado= " +resultado)
// for (i=1000;i>=100;i-=100){
//     console.log(i)
// }
// for (var nome of ["Silvano","João","Pedro"]){
//     for (var sobreNome of ["Araujo","Silva","Velho"]){
//     console.log(nome+" "+sobreNome)
//     }
// }
// let frutas=["banana","maçã","mamão","morango","uva","melão","melancia","caqui","tomate"]
// for (let i =frutas.length-1;i>=0;i--) {
//     console.log(frutas[i]);    
// }

// const pontos=[12,34,56,34,5,8,76,4,1,90];
// for (i=0; i<pontos.length;i++){
//     console.log(pontos[i])
// }
// const pontos2=[2,4,6,8,10,12,14,16,18,20];
// for (i=0; i<pontos2.length;i++){
//         console.log(pontos2[i]*2)
// }
// console.log(pontos2)
// const pontos3=[2,4,6,8,10,12,14,16,18,20];
// for (i=0; i<pontos3.length;i++){
//     pontos3[i]*=3
//     console.log(pontos3[i])
// }
var nomes=["Adevaldo","Juan","Julio","Silvano"]
var copianomes=["Marcos"]
function guardaArray (origin,salva){
    for (let g=0;g<origin.length;g++) {
        console.log(origin[g])
    }
    for (let g=0;g<salva.length;g++) {
        console.log(salva[g])
    }
}
console.log(guardaArray(nomes,copianomes))
