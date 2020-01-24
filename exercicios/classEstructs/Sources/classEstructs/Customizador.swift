//
//  Customizador.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

class Customizador {
    
    let nome: String
    var card: CartaoCredito?
    
    init(nome: String) {
        self.nome = nome
        print("\(nome) foi inicializado")
    }
    
    deinit {
        print("\(nome) foi desinicializado")
    }
}
