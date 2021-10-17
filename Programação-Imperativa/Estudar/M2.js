
function microondas(alimentos,a){
    if (typeof alimentos=="number" && typeof a=="number") {
        switch (alimentos){
            case 1: console.log(prato(a,10));
            break;
            case 2: console.log(prato(a,8));
            break;
            case 3: console.log(prato(a,15));
            break;
            case 4: console.log(prato(a,12));
            break;
            case 5:console.log(prato(a,8));
            break;
            default:console.log("Prato inexistente.");
        }
    } else{
        console.log("Por favor, digite o tempo desejado em numero e escolha um prato valido")
    }
}
function prato(a, b) {
    if (a<b) {
        return "Tempo insuficiente";
    } else if (a>(3*b)) {
        return "Kabumm";
    } else if (a>(2*b)) {
        return "Sua comida queimou";
    } else {
        return "Prato pronto, bom apetite!!!";
    }
}
// 1 - pipoca – 10 segundos (padrão);
// 2 - macarrão – 8 segundos (padrão);
// 3 - carne – 15 segundos (padrão);
// 4 - feijão – 12 segundos (padrão);
// 5 - brigadeiro – 8 segundos (padrão); 

microondas(3,14)