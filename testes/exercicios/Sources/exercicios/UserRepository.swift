//
//  Usuario.swift
//  exercicios
//
//  Created by Erick Kaique Da Silva on 21/11/19.
//

import Foundation

class UserRepository: UserProtocol {
    
    let network: NetworkProtocol = Network()
    
    func postLogin(login: Login, completion: @escaping (Result<ObjetoUsuario, APIError>) -> Void) {

        network.request(url: UserEndPoint.login(login: login)) { (result) in
            
            switch result {
            case .success(let data):
                completion(.success(try! JSONDecoder().decode(ObjetoUsuario.self, from: data)))
            case .failure(let error):
                completion(.failure(error))
            }
            
        }
        
    }
    
    func getUsuario(id: Int, completion: @escaping (Result<UsuarioTeste, APIError>) -> Void) {
        
//        request.request(url: , decode: UsuarioTeste.self, completion: completion)
    }
}
