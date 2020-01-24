//
//  Apartamento.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

class Apartamento {
    let unidade: String
    
    init(unidade: String) {
        self.unidade = unidade
        print("\(unidade) foi inicializada")
    }
    weak var morador: Pessoa?
    deinit {
        print("\(unidade) foi desinicializada")
    }
}
