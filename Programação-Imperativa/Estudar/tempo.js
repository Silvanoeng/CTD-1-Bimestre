module.exports = {
    //opção comida : tempos
    
    prato: (a, b) => {
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
}  
    

