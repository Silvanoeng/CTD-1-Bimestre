let alturaPessoa
let estaAcompanhada
let resposta

function podeSubir(Num1, Acomp) {  
alturaPessoa=Num1
estaAcompanhada=Acomp
if (alturaPessoa>1.40 && alturaPessoa<2.0){
return resposta="Pode subir."
} else if (alturaPessoa>1.2 && alturaPessoa<1.4 && estaAcompanhada=="S"){
return resposta="Pode subir, mas deve se manter acompanhada."
} else if (alturaPessoa>1.2 && alturaPessoa<1.4 && estaAcompanhada=="N"){
return resposta="Precisa estar acompanhada."
} else {
return resposta="Não pode subir, nem acompanhanda."     
}
}
console.log(podeSubir(1.2,"S"))

let Estacao = "Primavera"

switch (Estacao) {
    case ("Verão"):
    console.log("Que calor heins?!")
    break;
    case ("Inverno"):
        console.log("Frio dms!")
    break;
    case ("Outono"):
        console.log("É a estação em que as folhas caem.")
    break;
    case ("Primavera"):
        console.log("O momento em que as flores crescem.")
    break;
    default:
        console.log("Dado de entrada não coresponde a nenhum estação")    
}
 