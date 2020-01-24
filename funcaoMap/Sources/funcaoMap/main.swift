import Foundation

func tabuada(numero: Int) -> [Int] {
    let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let numeroTabuada = numero
    
    let resultados = numeros
        .map { n -> Int in
            let resultado = n * numeroTabuada
            return resultado
        }
    
    return resultados
}

//let resultadoTabuada = tabuada(numero: 5)

func numerosPrimos(numeros: [Int]) {
    let numeros = numeros
    
    let numeroEscolhido = 30
    let resultado = (1...numeroEscolhido).filter { numero -> Bool in
        
        let divisores = (1...numero).filter { divisor -> Bool in
            numero % divisor == 0
        }
        
        if divisores.count == 2 {
            print(divisores)
        }
        
//        print(divisores)
        
        return true
    }
    
//    print(resultado)
}

numerosPrimos(numeros: [])

func testeReduce() {
    let numeros = [1, 2, 3, 4]
    let resultado = numeros.reduce(1) { resultado, value -> Int in
            let result = resultado + value
            return result
    }
    
    print(resultado)
}
testeReduce()
//compactacao(string: "Time iOS")
