// Criando função construtora Restaurante, que receba como parâmetros
// o nome do restaurante e cardápio (que será um array de Strings)
function Restaurante(nomeRestaurante, cardapio){
    this.nomeRestaurante = nomeRestaurante
    this.cardapio = cardapio
        // Chame a função entrada dentro do objeto, que irá trazer uma
        // mensagem de boas-vindas, informando o nome do restaurante, e o cardápio.
        function entrada(a, b){
        return console.log("\nSeja bem vindo ao Restaurante "+a+
        ", estamos felizes em poder lhe atender.\nEm nosso cardápio de hoje temos "+b+".\n")
    }
    entrada(this.nomeRestaurante, this.cardapio)
}
let cardapio1 = ["Lasanha de Camarão", " Iscas de Peixe", " Siri na Casca", " Polvo à Milanesa"]


Restaurante("Estrela do Mar", cardapio1)

"\n"
console.log("Outra forma.")
function Restaurante1(nomeRestaurante1, ...cardapio1){
    this.nomeRestaurante1 = nomeRestaurante1
    this.cardapio1 = cardapio1
        function entrada(a, b){
        return console.log("\nSeja bem vindo ao Restaurante "+a+
        ", estamos felizes em poder lhe atender.\nEm nosso cardápio de hoje temos "+b+".\n")
    }
    entrada(this.nomeRestaurante1, this.cardapio1)
}

Restaurante1("Estrela do Norte", ["Camarão Frito", " Iscas de Polvo", " Bife à Milanesa"])
"\n"
console.log("Outra forma.")
function Restaurante2(nomeRestaurante2, ...cardapio2){
    this.nomeRestaurante2 = nomeRestaurante2
    this.cardapio2 = cardapio2
        function entrada(a, b){
        return console.log("\nSeja bem vindo ao Restaurante "+a+
        ", estamos felizes em poder lhe atender.\nEm nosso cardápio de hoje temos "+b+".\n")
    }
    entrada(this.nomeRestaurante2, this.cardapio2)
}

let restauranteHoje= new Restaurante2("Bob Esponja", ["Batata frita", " Aneis de Cebola", " Hamburgue Duplo"])
