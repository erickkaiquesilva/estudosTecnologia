//
//  Pais.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

class Pais {
    let nome: String
    var capitalCidade: Cidade!
    init(name: String, capitalNome: String) {
        self.nome = name
        self.capitalCidade = Cidade(name: capitalNome, pais: self)
    }
}
