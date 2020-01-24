import Foundation

class Node {
    var valor: Int
    var anterior: Node?
    var proximo: Node?
    
    init(valor: Int) {
        self.valor = valor
    }
}

class Pilha {
    
    var inicioPilha: Node?
    var fimPilha: Node?
    
    
    func push(valor: Int) {
        let novoNo = Node(valor: valor)
        
        if let ultimoNo = fimPilha {
            novoNo.anterior = ultimoNo
            ultimoNo.proximo = novoNo
        } else {
            inicioPilha = novoNo
        }
        fimPilha = novoNo
    }
    
    func pop() {
        var no = inicioPilha
        
        if no?.anterior == nil && no?.proximo == nil {
            inicioPilha = nil
            fimPilha = nil
        } else {
            var ultimoNo: Node?
            var noAnterior: Node?
            
            while no != nil {
                if no?.proximo == nil {
                    ultimoNo = no
                    break
                }
                no = no?.proximo
            }
            noAnterior = ultimoNo?.anterior
            noAnterior?.proximo = nil
            fimPilha = noAnterior
            ultimoNo = nil
        }
    }
    
    func peek() {
        print(fimPilha)
    }
    
    func transforma() {
        var no = inicioPilha
        
        while no != nil {
            no?.valor = no!.valor * 3
            no = no?.proximo
        }
    }
    
    func limparPilha() {
        inicioPilha = nil
        fimPilha = nil
    }
    
    func estaVazio() -> Bool {
        return inicioPilha == nil && fimPilha == nil
    }
    
    func exibe() {
        var no = inicioPilha
        while no != nil {
            print(no?.valor)
            no = no?.proximo
        }
    }
    
}

let pilha = Pilha()

pilha.push(valor: 2)
//pilha.push(valor: 3)
//pilha.push(valor: 4)
//pilha.push(valor: 5)


//pilha.pop()
//pilha.pop()
//pilha.push(valor: 20)
//pilha.push(valor: 30)
//pilha.pop()
//pilha.push(valor: 10)
//pilha.push(valor: 30)
//pilha.push(valor: 23)

//print(pilha.estaVazio())
//pilha.limparPilha()
//pilha.exibe()
