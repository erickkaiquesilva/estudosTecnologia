//
//  NetworkServiceProtocol.swift
//  exercicio2
//
//  Created by Erick Kaique Da Silva on 22/11/19.
//

import Foundation

public protocol NetworkServiceProtocol {
    var base: String { get }
    var method: HttpMethod { get }
    var path: String { get }
    var params: Encodable? { get }
    var headers: [String: String]? { get }
}


struct LoginCampos: Codable {
    var usuario: String
    var senha: String
}





//class ABC {
//    
//    func request () {
//        let urlSession = URLSession()
//        var urlRequest = URLRequest(url: URL(string: "http://google.com")!)
//
//        urlRequest.setValue("umValor", forHTTPHeaderField: "umHeader")
//        urlRequest.httpMethod = "POST"
//        
//        
//        let usuario = LoginCampos(usuario: "esdras", senha: "123456")
//        
//        let body = try! JSONEncoder().encode(usuario)
//        
//        urlRequest.httpBody = body
//
//
//        urlSession.dataTask(with: urlRequest) { (data, response, error) in
//            
//            if let http = response as? HTTPURLResponse {
//                
//                if http.statusCode == 200 {
//                    
//                    print("deu bom")
//                }
//            }
//            
//            print(data)
//            print(response)
//            print(error)
//        }.resume()
//
//    }
//}
