//Terceirizando funções

const andar= () => console.log("O carro está andando");
const parar= () => console.log("O carro parou");
const acaoCarro= (acao) => acao();
acaoCarro(parar);
acaoCarro(andar);
