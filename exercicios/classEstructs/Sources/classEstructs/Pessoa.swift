//
//  Pessoa.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

class Pessoa {
    
    let nome: String
    var apartamento: Apartamento?
    
    
    init(nome: String) {
        self.nome = nome
        print("\(nome) foi inicializado")
    }
    
    deinit {
        print("\(nome) foi desinicializado")
    }
    
}
