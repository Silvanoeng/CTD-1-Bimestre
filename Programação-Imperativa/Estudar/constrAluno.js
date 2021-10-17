// passo 1
// Crie um objeto aluno que tenha como atributos: nome (string), quantidade de faltas (number)
// e notas (array de números). Crie um construtor para ele e importe-o como o módulo aluno.

function Aluno (nome, quantidadeDeFaltas, notas){
    this.nome = nome;
    this.quantidadeDeFaltas = quantidadeDeFaltas;
    this.notas = notas;

    this.calculaMedia =()=>this.notas.reduce((acum, n)=>acum+n)/this.notas.length;
    this.faltaAluno =()=>this.quantidadeDeFaltas=this.quantidadeDeFaltas+1;
}


module.exports = Aluno;


