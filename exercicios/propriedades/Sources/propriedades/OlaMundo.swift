//
//  OlaMundo.swift
//  propriedades
//
//  Created by Erick Kaique Da Silva on 21/11/19.
//

import Foundation

class OlaMundo {
    
    var nome: String
    
    lazy var ola: String = {
        return "Ola \(nome)"
    }()
    
    init(nome: String) {
        self.nome = nome
    }
}
