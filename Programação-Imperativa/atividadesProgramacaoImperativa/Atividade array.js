// Lista de Compras
listaDeCompras = ["Arroz","Pão","Café","Açucar","Leite"];

console.log("A lista era essa ", listaDeCompras);

naoComprar= [listaDeCompras.pop()];

console.log("\n O metodo .pop elimina o último elemento, ele retorna esse elemento, estou inserido na array naoComprar.");
console.log(listaDeCompras,naoComprar);

listaDeCompras.push("Toalha de Papel");

console.log("\n O metodo .push adiciona um elemento no Array.");
console.log(listaDeCompras);

naoComprar.push(listaDeCompras.shift());
console.log( "\n O metodo .shift elimina o primeiro elemento, ele retorna esse elemento, estou inserido na array naoComprar com um .push.");
console.log(listaDeCompras);
console.log(naoComprar);


listaDeCompras.unshift("Carne")
console.log("\n O metodo .unshift adiciona no inicio um ou mais elemento.");
console.log(listaDeCompras);

console.log("\n O metodo .join retorna o array usando um separador.");
console.log(listaDeCompras.join("-"))
console.log("\n O metodo .length retorna o número de dados armazenados no array.");
console.log(naoComprar.length);


