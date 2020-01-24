//
//  Requisicao.swift
//  exercicios
//
//  Created by Erick Kaique Da Silva on 21/11/19.
//

import Foundation

protocol NetworkProtocol {
    var session: URLSession { get }
    func request(url: EndPointTypeProtocol, completion: @escaping (Result<Data, APIError>) -> Void)
}

class Network: NetworkProtocol {
    
    var session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    private func decodingTask<T: Decodable>(data: Data) -> T? {
        return try? JSONDecoder().decode(T.self, from: data)
    }
    
    private func createRequest(from endpoint: EndPointTypeProtocol) -> URLRequest {
    
        let url = URL(string: "\(endpoint.base)\(endpoint.path)")!
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.allHTTPHeaderFields = endpoint.headers
        urlRequest.httpBody = endpoint.params?.encodeToData()
        urlRequest.httpMethod = endpoint.method.rawValue
        
        return urlRequest
    
    }
    
    func request(url: EndPointTypeProtocol, completion: @escaping (Result<Data, APIError>) -> Void) {
        
        let task = session.dataTask(with: createRequest(from: url)) { data, response, error in
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(APIError.requestFailed(description: error?.localizedDescription ?? "No Description")))
                return
            }
            
            guard httpResponse.statusCode == 200 else {
                completion(.failure(APIError.responseUnsuccessful(description: "\(httpResponse.statusCode)")))
                return
            }
            
            guard let data = data else {
                completion(.failure(APIError.invalidData))
                return
            }
            
            completion(.success(data))
        }
        
        task.resume()
    }

}
