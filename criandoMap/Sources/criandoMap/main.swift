import Foundation

func calculaInteiros(n1: Int, n2: Int) -> Int {
    let resultado = n1 + n2
    
    return resultado
}

//let resultado = calculaInteiros(n1: 2, n2: 3)
//
//print(resultado)
//
//let funcaoCalculaInteiros = calculaInteiros
//
//let resultadoCalculos = funcaoCalculaInteiros(10, 7)
//
//print(resultadoCalculos)

/*
    Criando Funçao
 */

let funcao = { (n1: Int, n2: Int) -> Int in
    return n1 + n2
}

var teste: ((Int, Int) -> Int) = funcao

teste = funcao



//let resultado = teste(10, 20)
//print(resultado)


func welcome(name: String, message: ((String) -> String)) -> String {
    return message(name)
}

//let resultado = welcome(name: "Bit-Bayman")
let resultado = welcome(name: "Dede") { name -> String in
    return name
}

//print(resultado)


let resultado2 = welcome(name: "Renan") { name -> String in
    let message = "Welcome \(name)"
    return message
}

//print(resultado2)


func countString(string: String, calcula: ((String) -> String)) -> String {
    return calcula(string)
}

let resultado3 = countString(string: "Carro Cor") { string -> String in
    let count = string.count
    
    return "A palavra \(string) tem um total de \(count) caracteres"
}

//print(resultado3)

func tabuada(numero: Int, resolvendoTabuada: ((Int) -> [Int])) -> [Int] {
    return resolvendoTabuada(numero)
}

let resultadoTabuada = tabuada(numero: 3) { numero -> [Int] in
    
    let resultado = (1...10).map { n -> Int in
        return numero * n
    }
    
    return resultado
}

//print(resultadoTabuada)

func criandoMap(numeros: [Int], mapeando: ((Int) -> Int )) -> [Int] {
    
    var resultadoNumeros: [Int] = []
    
    for numero in numeros {
        resultadoNumeros.append(mapeando(numero))
    }
    
    return resultadoNumeros

//
//    for numero in numeros {
//        resultadoNumeros.append(numero * 3)
//    }
    
//    return resultadoNumeros
}

// (Tipo) -> Tipo?
// (Int) -> Int

let resultadoMap = criandoMap(numeros: [1, 2, 3, 4, 5, 6, 7]) { numero -> Int in
    let resultado = numero * 2
    return resultado
}

//print(resultadoMap)


func filtrandoDivisiveisPorDois(numeros: [Int]) {
    let resultados = numeros.filter { n -> Bool in
        return n % 2 == 0
    }
    
    print(resultados)
}

//print(filtrandoDivisiveisPorDois(numeros: [1, 2, 3, 4, 5, 6, 7]))

func filtro(numeros: [Int], filtrando: ((Int) -> Bool)) -> [Int] {
    var resultadoNumeros: [Int] = []
    
    for numero in numeros {
        if filtrando(numero) {
            resultadoNumeros.append(numero)
        }
    }
    
    return resultadoNumeros
}

let resultandoPares = filtro(numeros: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) { numero -> Bool in
    return numero % 2 == 0
}

//print(resultandoPares)

func filtro2(frase: [String], filtrando: ((String) -> Bool)) -> [String] {
    var resultadosFrases: [String] = []
    
    for palavra in frase {
        if filtrando(palavra) {
            resultadosFrases.append(palavra)
        }
    }
    
    return resultadosFrases
    
}

let resultadoFiltro2 = filtro2(frase: ["aaaaaaa", "zzzzzz", "aw", "s", "2"]) { palavra -> Bool in
    return palavra.count >= 3
}


let clousure =  { (n1: Int, n2: Int) -> Int in
    return n1 + n2
}

//print(clousure(2, 49))

//print(resultadoFiltro2)

let resultadoMultiplos = filtro(numeros: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) { $0 % 4 == 0 }

//print(resultadoMultiplos)

func exemploMap() {
    let possibleNumber: Int? = Int("43")
    
    let possibleSquare = possibleNumber.map { number -> Int in
        let resultado = number * number
        return resultado
    }
    
    print(possibleSquare)
}

//exemploMap()

func exemploReduce() {
//    let vals = ("val", 1)
    
    for i in 0...100 {
        print(i)
    }
    
    var items = ["a": 1, "b": 2]
    
    items["b"] = nil
    
    
}

enum Position: Int {
    case first, second, other
}

print(Position.other.rawValue)

//exemploReduce()
