import Foundation

class Node {
    var valor: Int
    var esquerda: Node?
    var direita: Node?
    
    init(valor: Int) {
        self.valor = valor
    }
}

class Arvore {
    
    var inicioArvore: Node?
    
    func adicionar(valor: Int) {
        
        if inicioArvore == nil {
            inicioArvore = Node(valor: valor)
        } else {
            let novoNo = Node(valor: valor)
            inserir(node: inicioArvore!, novoNo: novoNo)
        }
    }
    
    private func inserir(node: Node, novoNo: Node) {
        if novoNo.valor > node.valor {
            if node.direita == nil {
                node.direita = novoNo
            } else {
                inserir(node: node.direita!, novoNo: novoNo)
            }
        } else {
            if node.esquerda == nil {
                node.esquerda = novoNo
            } else {
                inserir(node: node.esquerda!, novoNo: novoNo)
            }
        }
    }
    
    private func erd(node: Node?) {
        if node != nil {
            imprimir(node: node)
            erd(node: node?.esquerda)
            erd(node: node?.direita)
        }
    }
    
    func imprimir(node: Node?) {
        guard let no = node else { return }
        
        var valorEsq = 0
        var valorDir = 0
        
        if let valorEsquerda = no.esquerda?.valor {
            valorEsq = valorEsquerda
        }
        
        if let valorDireita = no.direita?.valor {
            valorDir = valorDireita
        }
        
        print("-- \(no.valor) -- \n \(valorEsq) -- \(valorDir)")
        print("\n")
    }
    
    func exibe() {
        erd(node: inicioArvore)
    }
}

let arvore = Arvore()

arvore.adicionar(valor: 10)

arvore.adicionar(valor: 2)
arvore.adicionar(valor: 17)
arvore.adicionar(valor: 3)
arvore.adicionar(valor: 1)
arvore.adicionar(valor: 4)
arvore.adicionar(valor: 5)
arvore.adicionar(valor: 6)
arvore.adicionar(valor: 7)


arvore.adicionar(valor: 27)
arvore.adicionar(valor: 37)
arvore.adicionar(valor: 47)
arvore.adicionar(valor: 57)

arvore.exibe()
