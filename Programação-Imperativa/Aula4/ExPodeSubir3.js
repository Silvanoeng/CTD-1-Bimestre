
function podeSubir(alturaPessoa , estaAcompanhada) {  
if (alturaPessoa>1.40 && alturaPessoa<2.0){
return true
} else if (alturaPessoa>1.2 && alturaPessoa<1.4 && estaAcompanhada=="S"){
return true
} else {
return false    
}
}
console.log(podeSubir(1.1,"S"))