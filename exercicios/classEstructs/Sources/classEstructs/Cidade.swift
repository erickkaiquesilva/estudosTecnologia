//
//  Cidade.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

class Cidade {
    let nome: String
    unowned let pais: Pais
    init(name: String, pais: Pais) {
        self.nome = name
        self.pais = pais
    }
}
