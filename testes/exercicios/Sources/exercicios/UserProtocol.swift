//
//  UserProtocol.swift
//  exercicios
//
//  Created by Erick Kaique Da Silva on 21/11/19.
//

import Foundation

protocol UserProtocol {
    func getUsuario(id: Int, completion: @escaping (Result<UsuarioTeste, APIError>) -> Void)
    func postLogin(login: Login, completion: @escaping (Result<ObjetoUsuario, APIError>) -> Void)
}
