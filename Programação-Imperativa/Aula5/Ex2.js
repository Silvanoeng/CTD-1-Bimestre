let cores=["branco","azul","vermelho"]
console.log("Tamanho",cores.length)
cores.push("bandeira","pano","trapo")
console.log(cores)
let retirado = cores.shift()
console.log(cores)
console.log(retirado)
cores.unshift("rosa","roxo")
console.log(cores.join("*"),)
