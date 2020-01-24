//
//  Medicao.swift
//  propriedades
//
//  Created by Erick Kaique Da Silva on 21/11/19.
//

import Foundation

struct Ponto {
    var x = 0.0, y = 0.0
}

struct Tamanho {
    var largura = 0.0, altura = 0.0
}

struct Forma {
    
    var origem = Ponto()
    
    var tamanho = Tamanho()
    
    var centro: Ponto {
        get {
            let centroX = origem.x + (tamanho.largura / 2)
            let centroY = origem.y + (tamanho.altura / 2)
            return Ponto(x: centroX, y: centroY)
        }
        
        set(novoCentro) {
            origem.x = novoCentro.x - (tamanho.largura / 2)
            origem.y = novoCentro.y - (tamanho.altura / 2)
        }
    }
}
