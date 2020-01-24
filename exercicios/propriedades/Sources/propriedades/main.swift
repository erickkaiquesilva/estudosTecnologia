
let ola1 = OlaMundo(nome: "Erick")

let msg1 = ola1.ola

print(msg1)


var quadrado = Forma(origem: Ponto(x: 0.0, y: 0.0), tamanho: Tamanho(largura: 10.0, altura: 10.0)).self

let inicialQuadradoCentro = quadrado.centro

quadrado.centro.x = 15
quadrado.centro.y = 15

print("o quadrado.origin é agora \(quadrado.origem.x), \(quadrado.origem.y)")
