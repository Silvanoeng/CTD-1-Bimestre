
cartoons=[1,3,5];
filmes=[2,4,6];
console.log(filmes);
console.log(cartoons);

function adicionar(Array1,Array2) {
    if(Array1.length>0){
        Array2.push(Array1.shift());
        console.log(Array2)
        adicionar(filmes,cartoons)
    }else{
        console.log("Fim.")
    }
}
adicionar(filmes,cartoons)

