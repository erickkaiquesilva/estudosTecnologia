import Foundation

func fibonacci(numero: Int) -> [Int] {
    
    var i = 0
    var resultado = 0
    
    var n1 = 0
    var n2 = 1
    
    var sequenciaFibonnaci: [Int] = []
    
    if numero == 1 {
        sequenciaFibonnaci.append(1)
    } else {
        while i <= numero {
            sequenciaFibonnaci.append(resultado)
            n1 = n2
            n2 = resultado
            resultado = n1 + n2
            i += 1
        }
    }
    
    return sequenciaFibonnaci
}

var resultado = fibonacci(numero: 10)

//print("Resultado da sequencia Fibonnaci \(resultado)")



func testandoReduce() {
    let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    let resultado = numeros.reduce(1) { (acumulador, value)  -> Int in
//        print(acumulador)
        let resultado = acumulador * value
        return resultado
    }
    
//    print(resultado)
}

//let resultadoReduce = testandoReduce()
//print(resultadoReduce)

func somandoInteiros(numeros: [Int], inicalValue: Int, reduzindo: ((Int, Int) -> Int)) -> Int {
    
    var resultadoReduce = 0
    var valorInicial = inicalValue
    
    for numero in numeros {
        resultadoReduce = reduzindo(valorInicial, numero)
        valorInicial += numero
    }

    return resultadoReduce
}

let resultadoSomaInteiros = somandoInteiros(numeros: [1, 2, 3, 4, 5, 6, 7, 8, 9], inicalValue: 0) { (acumulador, valor) -> Int in
//    print(acumulador)
    let resultado = acumulador + valor
    return resultado
}

//print(resultadoSomaInteiros)


enum Tipo {
    case carne(String)
    case massa(String)
    case asiatico
}

func pedido(tipoDecomida: Tipo) {
    switch tipoDecomida {
    case .asiatico:
        print("Pedido Solicitado Foi Asiatico")
    case .carne(let carne):
        print("Pedido Solicitado Foi \(carne)")
    case .massa:
        print("Pedido Solicitado Foi Massa")
    }
}

//let testePedido = pedido(tipoDecomida: Tipo.carne("Alcatra"))

//print(testePedido)


enum DiaDaSemana: String {
    case Segunda
    case Terça
    case Quarta
    case Quinta
    case Sexta
    case Sabado
    case Domingo
    
    func day() -> String {
       return self.rawValue
    }
}

//print("Dia da semana selecionado:8 \(DiaDaSemana.Sexta.day())")


func meuMap(numeros: [Int], mapeando: ((Int) -> Int)) -> [Int] {
    var resultado: [Int] = []
    
    for numero in numeros {
        resultado.append(mapeando(numero))
    }
    
    return resultado
}

let resultadoMeuMap = meuMap(numeros: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) { numero -> Int in
    let resultado = numero * 2
    return resultado
}

//print(resultadoMeuMap)


func mapStrings(strings: [String], mapeando: ((String) -> String)) -> [String] {
    var resultadoStrings: [String] = []
    
    for string in strings {
        resultadoStrings.append(mapeando(string))
    }
    
    return resultadoStrings
}

let resultadoMapString = mapStrings(strings: ["aaaaa", "bbb", "cccc"]) { string -> String in
    let resultado = string.uppercased()
    return resultado
}

//print(resultadoMapString)

func contandoStrings(strings: [String], mapeando: ((String) -> Int)) -> [Int] {
    var resultadoContagem: [Int] = []
    
    for string in strings {
        resultadoContagem.append(mapeando(string))
    }
    
    return resultadoContagem
}

let resultadoContandoString = contandoStrings(strings: ["Erick", "Giovana", "Lucas", "Isadora"]) { string -> Int in
    let resultado = string.count
    return resultado
}

//print(resultadoContandoString)


func filtrandoDivisores(numeros: [Int], filtro: ((Int) -> Bool)) -> [Int] {
    
    var resultadoDivisores: [Int] = []
    
    for numero in numeros {
        if filtro(numero) {
            resultadoDivisores.append(numero)
        }
    }
    
    return resultadoDivisores
}

let resultadoDivisores = filtrandoDivisores(numeros: [1, 2, 3, 4, 5, 6, 7, 8, 9]) { numero -> Bool in
    return numero % 2 == 0
}

print(resultadoDivisores)
