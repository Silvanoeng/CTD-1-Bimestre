
//  passo 7
//  Importe o módulo estudantes.js, que contém uma lista de alunos, dentro do arquivo que contém
//   o objeto curso. Substitua o conteúdo da propriedade lista de estudantes, pela lista de estudantes 
//   do arquivo estudantes.js e garanta que sigam funcionando todos os métodos corretamente. 
//   (revisar que o arquivo tenha todos os métodos corretamente).

const Aluno = require('./constrAluno');


let estudantes = [new Aluno("Diego", 1, [7, 9, 8, 10]),
new Aluno("Maria", 0, [9, 8, 10, 10]),
new Aluno("Lucas", 2, [6, 8, 8, 7]),
new Aluno("Paula", 3, [9, 9, 9, 9]),
new Aluno("Tiago", 1, [7, 9, 8, 10]),
new Aluno("Matheus", 0, [9, 8, 10, 10]),
new Aluno("Lucia", 4, [10, 10, 10, 9]),
new Aluno("Paulo", 3, [9, 9, 9, 9]),
new Aluno("Daniela", 1, [7, 9, 8, 10]),
new Aluno("Marcos", 0, [9, 8, 10, 10]),
new Aluno("Leandro", 2, [6, 8, 8, 7]),
new Aluno("Tais", 3, [9, 9, 9, 9])]


module.exports = estudantes;