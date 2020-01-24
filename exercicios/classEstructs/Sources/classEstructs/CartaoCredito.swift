//
//  CartaoCredito.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

class CartaoCredito {
    
    let numero: Int64
    unowned(unsafe) let customizador: Customizador
    
    init(numero: Int64, customizador: Customizador) {
        self.numero = numero
        self.customizador = customizador
        print("O Cartão \(numero) foi inicializado, junto ao seu customizador \(customizador.nome)")
    }
    
    deinit {
        print("Cartão #\(numero) foi desinicializado, porque o customizador \(customizador.nome) parou de usalo")
    }
}
