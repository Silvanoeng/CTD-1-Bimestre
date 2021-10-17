
function podeSubir(alturaPessoa, estaAcompanhada) {  
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
console.log(podeSubir(1.3,"S"))