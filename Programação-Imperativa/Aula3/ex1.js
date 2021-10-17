
function calcularIndiceDeMassaCorporal(peso, altura) {
    let alturaMetros = altura / 100
    return (peso / alturaMetros ** 2).toFixed(2)
}
console.log(calcularIndiceDeMassaCorporal(80, 170))

function soma(num1, num2){
    return (num1 + num2)
}
function subtracao(num1, num2){
    return (num1 - num2)
}
function multiplicacao(num1, num2){
    return  (num1 * num2)
}
function divisao(num1, num2){
    return (num1 / num2).toFixed(2)
}
console.log(soma (80, 170))
console.log(subtracao (80, 170))
console.log(multiplicacao (80, 170))
console.log(divisao (80, 170))

let nomeJogador
let golsJogador
let precoJogador

function fazerGol(nome1, gols, preco) {
        return (nome1) + " tem " + (gols+1) + " GOL!!!!!" + ", seu preço é de " + (preco) + " Dolares."
}
console.log(fazerGol("Paulo Nunes", 10, "10.000"))

function fazerGol2(nome2, gols2, preco2) {
    nomeJogador = nome2
    golsJogador=(gols2+1)
    precoJogador = preco2
    return (nomeJogador) + " tem " + (golsJogador) + " GOL!!!!!" + ", seu preço é de " + (precoJogador) + " Dolares."
}
console.log(fazerGol2("Paulo Nunes", 10, "10.000"))
let nomeJogador3
let golsJogador3
let precoJogador3
function hatTrick(nome3, gols3, preco3) {
    nomeJogador3 = nome3
    golsJogador3=(gols3)
    golsJogador3++
    golsJogador3++
    golsJogador3++
    precoJogador3 = (preco3*1.1)
    return (nomeJogador3) + " tem " + (golsJogador3) + " GOL!!!!!" + ", seu preço é de " + (precoJogador3) + " Dolares."
}
console.log(hatTrick("Paulo Nunes", 10, 10000))