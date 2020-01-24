//
//  Funcionario.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

class Funcionario {
    
    var nome: String
    var sobrenome: String
    var idade: Int
    var ocupacao: String
    
    
    init(nome: String, sobrenome: String, idade: Int, ocupacao: String) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
        self.ocupacao = ocupacao
    }
    
    
    func holerite(folhaPagamento: FolhaPagamento) {
        
        print("Funcionário: \(nome + sobrenome) \n" +
              "Salario Folha Pagamento: \(folhaPagamento.salarioSemDesconto()) \n" +
              "Salario Liquido: \(folhaPagamento.salarioLiquido())")
        
    }
}
