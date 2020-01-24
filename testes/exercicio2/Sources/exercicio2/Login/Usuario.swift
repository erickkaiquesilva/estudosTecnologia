//
//  Usuario.swift
//  exercicio2
//
//  Created by Erick Kaique Da Silva on 22/11/19.
//

import Foundation

struct Usuario: Decodable {
    let cpf: String
    let email: String
    let id: Int
    let nome: String
    let pontos: Int
    let senha: String
    let sobrenome: String?
}
