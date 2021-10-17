//Atividade Loops
//Praticano com Loops
//Criei um loop utilizando o "for", onde a variavel "i" armazena o contador,
// tem a condição e o modificador "++" que incrementa no contador. 
console.log("\n1°")
for(let i=1;i<=5;i++){
    // Cada repetição vai mostrar no console a mensagem “Olá mundo”.
    console.log("Olá mundo")
}
console.log("\n2°")
//Criei um loop utilizando o "for", onde a variavel "i" armazena o contador,
// tem a condição e o modificador "i+2", para pegar o valor guardado e
// incrementar duas unidades no contador. 
for(let i=1;i<10;i=i+2){
    console.log(i)
}

//Criei um loop utilizando o "for", onde a variavel "i" armazena o contador,
// tem a condição e o modificador "++" que incrementa no contador.
console.log("\n3°")
for(let i=1;i<=10;i++){
    //Criei um loop utilizando o "for", onde a variavel "m" armazena o contador,
    // tem a condição e o modificador "++" que incrementa no contador.
    // Quando terminar esse segundo "for" ele retorna para o primeiro "for".
    // Quando voltar ele inicia novamente o segundo "for" com o contador recebendo "m=1".
    if (i>1){
        console.log("\n")
    }
    for(let m=1;m<=10;m++){
        console.log(i+"*"+m+"="+i*m)
    }
}
