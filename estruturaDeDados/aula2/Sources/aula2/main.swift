import Foundation

//class Pilha {
//
//    var numeros: [Int] = []
//
//    init(numeros: [Int]) {
//        self.numeros = numeros
//    }
//
//    func pushData(numero: Int) {
//        numeros.append(numero)
//    }
//
//    func popData() {
//        numeros.removeLast()
//    }
//
//    func delete(numero: Int) {
//        numeros = numeros.filter({ $0 != numero })
//    }
//
//    func topData() -> Int {
//        guard let numero = numeros.last else { return 0 }
//        return numero
//    }
//
//    func printPilha() {
//        print(numeros)
//    }
//}

//let pilha = Pilha(numeros: [1, 2, 3, 4, 5, 6, 7])

//pilha.printPilha()

//let ultimoNumero = pilha.topData()
//print("Ultimo elemento inserido na coleçao \(ultimoNumero)")

//pilha.popData()
//pilha.printPilha()


class Node {
    var valor: Int
    var anterior: Node?
    var proximo: Node?
    
    init(valor: Int) {
        self.valor = valor
    }
}

class ListaEncadeada {
    
    // Essas duas variaveis eu uso para apontar o inicio e o fim da lista
    var inicioLista: Node?
    var fimLista: Node?
    
    // Verificando se a lista esta vazia
    var listaVazia: Bool {
        return fimLista == nil
    }
    
    // Pegando o Primeiro da lista
    var primeiro: Node? {
        return inicioLista
    }
    
    // Pegando o final da lista
    var final: Node? {
        return fimLista
    }
    
    // Adicionando um novo objeto ao Node
    func adicionar(valor: Int) {
        // Crio um objeto
        let novoNode = Node(valor: valor)
        
        // Verifico se existe fim lista, caso exista, faço com que o ultimo da lista assuma o proximo dele como o novo no
        if let ultimoDaLista = fimLista {
            novoNode.anterior = ultimoDaLista
            ultimoDaLista.proximo = novoNode
        } else {
            // Caso nao exista eu crio um novo no
            inicioLista = novoNode
        }
        // E esse novo no ele assume tambem o fim da lista
        fimLista = novoNode
    }
    
    func adicionarComeco(valor: Int) {
        let novoNode = Node(valor: valor)
        
        if inicioLista != nil {
            let proximo = inicioLista
            inicioLista = novoNode
            novoNode.proximo = proximo
        } else {
            print("A lista esta vazia")
        }
    }
    
    func adicionaIndex(valor: Int, index: Int) {
        let novoNode = Node(valor: valor)
        var node = inicioLista
        
        var nodeAlterar: Node?
        var nodeAnterior: Node?
        var i = index
        
        while node != nil {
            if i == 0 {
                nodeAlterar = node
                break
            }
            i -= 1
            node = node?.proximo
        }
        
        if nodeAlterar?.anterior != nil {
            nodeAnterior = nodeAlterar?.anterior
            nodeAnterior?.proximo = novoNode
            novoNode.proximo = nodeAlterar
        } else {
            inicioLista = novoNode
            novoNode.proximo = nodeAlterar
        }
    }
    
    func alterarValor(novoValor: Int, index: Int) {
        var i = index
        var node = inicioLista
        
        while node != nil {
            if i == 0 { break }
            i -= 1
            node = node?.proximo
        }
        node?.valor = novoValor
    }
    
    func pesquisarNode(index: Int) -> Node? {
        // Percorro a lista que esta ligada
        if index >= 0 {
            // aponto o inicio da lista para começar a percorrer
            var node = inicioLista
            var i = index
            
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node?.proximo
            }
        }
        return nil
    }
    
    func exibe() {
        var node = inicioLista
        
        while node != nil {
            print(node?.valor)
            node = node?.proximo
        }
    }
}


let lista = ListaEncadeada()

lista.adicionar(valor: 5)
lista.adicionar(valor: 3)
lista.adicionar(valor: 4)
//lista.adicionar(valor: 7)
//lista.adicionarComeco(valor: 10)

//lista.exibe()
//print(lista.inicioLista?.valor)
//lista.adicionar(valor: 1)
//lista.adicionar(valor: 20)
//let resultado = lista.pesquisarNode(index: 0)
//let teste = resultado?.proximo

//lista.adicionaIndex(valor: 30, index: 2)
lista.exibe()

//lista.alterarValor(novoValor: 2000, index: 2)
//lista.exibe()

class NodeString {
    var valor: String
    var anterior: NodeString?
    var proximo: NodeString?
    
    init(valor: String) {
        self.valor = valor
    }
}

class ListaEncandeadaComStrings {
    
    var inicioLista: NodeString?
    var fimLista: NodeString?
    
    var primeiro: NodeString? {
        return inicioLista
    }
    
    var final: NodeString? {
        return fimLista
    }
    
    func estaVazia() -> Bool {
        return fimLista == nil
    }
    
    func addNovaString(valor: String) {
        let novoNoString = NodeString(valor: valor)
        
        if let ultimoNo = fimLista {
            novoNoString.anterior = ultimoNo
            ultimoNo.proximo = novoNoString
        } else {
            inicioLista = novoNoString
        }
        
        fimLista = novoNoString
    }
    
    func pesquisaValor(valor: String) -> Int {
        var no = inicioLista
        var count = 0
        if no?.valor == valor {
            return count
        } else {
            while no != nil {
                if no?.valor == valor { break }
                count += 1
                no = no?.proximo
            }
        }
        
        return count
    }
    
    func deletarValor(indice: Int) {
        
        var no = inicioLista
        var i = indice
        
        var itemParaDeletar: NodeString?
        var noAnterior: NodeString?
        
        while no != nil {
            if i == 0 {
                itemParaDeletar = no
                break
            }
            i -= 1
            no = no?.proximo
        }
        
        if itemParaDeletar?.proximo != nil && itemParaDeletar?.anterior == nil {
            inicioLista = itemParaDeletar?.proximo
            itemParaDeletar = nil
        } else if itemParaDeletar?.proximo != nil && itemParaDeletar?.anterior != nil {
            noAnterior = itemParaDeletar?.anterior
            noAnterior?.proximo =  itemParaDeletar?.proximo
        } else {
            itemParaDeletar = nil
        }
    }
    
    func exibe() {
        var no = inicioLista
        
        while no != nil {
            print(no?.valor)
            no = no?.proximo
        }
    }
}


//let listaString = ListaEncandeadaComStrings()
//listaString.addNovaString(valor: "ERICK")
//listaString.addNovaString(valor: "GIOVANA")
//listaString.addNovaString(valor: "LUCAS")
//listaString.addNovaString(valor: "ISADORA")
//
//listaString.deletarValor(indice: 0)
//listaString.exibe()

//listaString.deletarValor(indice: 3)
//listaString.exibe()
//let resultadoPesquisa = listaString.pesquisaValor(valor: "ISADORA")

//print("O resultado da sua pesquisa foi encontrado, a posição do resultado é \(resultadoPesquisa)")

//listaString.exibe()
