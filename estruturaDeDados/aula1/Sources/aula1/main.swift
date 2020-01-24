import Foundation

func formulaBhaskara() {
    
    let valorA = -10
    let valorB = 0
    let valorC = -7
    
    let quadradoB = valorB * valorB
    
    let delta = quadradoB - 4 * valorA * valorC
    
//    print(delta)
    
    if(delta < 0) {
        print("Nao e possivel calcular, pois o delta e menor que zero!")
    }
    
    if(delta == 0) {
        print("O delta e zero, portanto os valores de X1 e X2 serao iguais")
    } else {
        let bNegativo = valorB * (-1)
        let raizDelta = sqrt(Double(delta))
        
        let divisor = 2 * valorA
        
        let resultadoX1 = (Double(bNegativo) + raizDelta) / Double(divisor)
        let resultadoX2 = (Double(bNegativo) - raizDelta) / Double(divisor)
        print("Resultado X1 = \(resultadoX1)")
        print("Resultado X2 = \(resultadoX2)")
    }
    
    
}

//formulaBhaskara()

func fatorial(n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return fatorial(n: n - 1) * n
    }
}

let resultadoFatorial = fatorial(n: 5)

//print(resultadoFatorial)

func Fibonacci(numero: Int) -> [Int] {
    var i = 0
    var resultado = 0
    
    var n1 = 0
    var n2 = 1
    
    var sequenciaFibonnaci: [Int] = []
    
    if numero == 1 {
        sequenciaFibonnaci.append(1)
    } else {
        while i <= numero {
            if resultado != 0 {
                sequenciaFibonnaci.append(resultado)
            }
            n1 = n2
            n2 = resultado
            resultado = n1 + n2
            i += 1
        }
    }
    
    return sequenciaFibonnaci
}

let resultadoFibonacci = Fibonacci(numero: 8)
//print(resultadoFibonacci)

func FibonacciRecursivo(numero: Int) -> Int {
    if numero == 0 {
        return 0
    } else {
        if numero == 1 {
            return 1
        } else {
            return FibonacciRecursivo(numero: numero - 1) + FibonacciRecursivo(numero: numero - 2)
        }
    }
}

let resultadoFibonacciRecursivo = FibonacciRecursivo(numero: 8)
//print(resultadoFibonacciRecursivo)

func calculoExponencial(numero: Int, expoente: Int) -> Int {
    
    if expoente > 0 {
        return numero * calculoExponencial(numero: numero, expoente: expoente - 1)
    } else if expoente == 0 {
        return 1
    } else {
        return 0
    }
}

let resultadoExponencial = calculoExponencial(numero: 2, expoente: 10)
//print(resultadoExponencial)
