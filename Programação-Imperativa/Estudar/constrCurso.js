// passo 3
// Em um arquivo diferente, crie o objeto literal curso que tem como atributos: 
// nome do curso (string), nota de aprovação (number), faltas máximas (number) e uma lista de estudantes 
// (um array composto pelos alunos criados no passo 1).

function Curso (nomeDoCurso, notaDeAprovacao, faltasMaximas, estudantes){
    this.nomeDoCurso = nomeDoCurso;
    this.notaDeAprovacao = notaDeAprovacao;
    this.faltasMaximas = faltasMaximas;
    this.estudantes = estudantes;
    
    this.printInfo=()=>console.log(this.nomeDoCurso,this.notaDeAprovacao,this.faltasMaximas,this.estudantes);
    this.novoAluno=(na)=>this.estudantes.push(na);
// passo 5
// Crie um método para o objeto curso que receba um aluno (como parâmetro) e retorne 
// true se ele aprovou no curso ou false em caso de reprovação. Para ser aprovado, o 
// aluno tem que ter uma média igual ou acima da nota de aprovação  e ter menos faltas 
// que faltas máximas. Se tiver a mesma quantidade, tem que estar 10% acima da nota de aprovação.

    mediaAluno=(aluno)=>this.estudantes.find((al)=>al==aluno).calculaMedia()
    mediaMaior=(aluno)=>mediaAluno(aluno)>this.notaDeAprovacao?true:false
    faltas=(aluno)=>this.estudantes.find((al)=>al==aluno).quantidadeDeFaltas
    faltasMenor=(aluno)=>faltas(aluno)<this.faltasMaximas?true:false
    faltasIgual=(aluno)=>faltas(aluno)==this.faltasMaximas?true:false
    this.aprovacaoAluno=(aluno)=>{
        return(mediaMaior(aluno)&&faltasMenor(aluno))||(faltasIgual(aluno)&&(mediaAluno(aluno)>=this.notaDeAprovacao*1.1))
    }
// passo 6
// Crie um método para o objeto curso que percorra a lista de estudantes e retorne um array de
//  booleanos com os resultados se os alunos aprovaram ou não.

    this.turmaAprovada=()=>this.estudantes.map((al)=>this.aprovacaoAluno(al))
}

module.exports = Curso;


