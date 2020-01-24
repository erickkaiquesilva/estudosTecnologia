import Foundation


/*

    O USO DAS CLASS PESSOA e APARTAMENTO tem como objetivo mostrar como funciona a referencia fraca de um classe para outro
    
    O Uso das CLASS CUSTOMIZADOR e CARTAOCREDITO tem como objetivo mostrar como funciona a referencia não proprietárioas
 
    O Uso das CLASS PAIS e CIDADE tem como objetivo mostar referências não proprietárias e propriedades opcionais implicitamente desembrulhadas
 
*/
//var ref1: Pessoa?
//var ref2: Pessoa?
//var ref3: Pessoa?
//
//var
//
//ref1 = Pessoa(nome: "Erick")
//ref2 = ref1
//ref3 = ref1
//
//ref1 = nil
//ref2 = nil
//ref3 = nil

//var pessoa1: Pessoa?
//var unidade7: Apartamento?
//
//pessoa1 = Pessoa(nome: "Erick Silva")
//unidade7 = Apartamento(unidade: "unidade 7A")
//
//pessoa1?.apartamento = unidade7
//unidade7?.morador = pessoa1
//
//pessoa1 = nil
//
//var ref: Pessoa?

//var customizador1: Customizador?
//customizador1 = Customizador(nome: "Erick Silva")
//customizador1?.card = CartaoCredito(numero: 1234_5678_9012_3456, customizador: customizador1!)
//
//customizador1 = nil


var pais = Pais(name: "Brasil", capitalNome: "Brasilia")

print("O Pais \(pais.nome) tem como capital o estado de \(pais.capitalCidade.nome)")

var ref: Pessoa?
