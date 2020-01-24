//
//  Networking.swift
//  exercicio2
//
//  Created by Erick Kaique Da Silva on 22/11/19.
//

import Foundation

protocol NetworkProtocol {
    func request<T: Decodable>(_ service: NetworkServiceProtocol, to decode: T.Type, completion: @escaping (Result<T, APIError>?) -> Void)
}

class Network: NetworkProtocol {
    
    var urlSession: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.urlSession = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    func request<T>(_ service: NetworkServiceProtocol, to decode: T.Type,  completion: @escaping (Result<T, APIError>?) -> Void) where T : Decodable {
        
        guard let urlRequest = configureUrl(with: service) else {
            print("ERROR")
            return
        }
        
        execute(urlRequest: urlRequest, urlSession: urlSession, decode: decode, completion: completion)
    }
    
    private func configureUrl(with service: NetworkServiceProtocol) -> URLRequest? {
       
        var components: URLComponents {
            if var components = URLComponents(string: service.base) {
                components.path = service.path
                return components
            }
            fatalError("Fail to set Components")
        }
        
        guard let url = components.url else { return nil }
        
        var urlRequest = URLRequest(url: url)
        
        let allHeaders = HeadersManager.defaultHeaders.merging(service.headers ?? [:]) { $1 }
        urlRequest.httpMethod = service.method.rawValue
        
        if var params = service.params?.dictionary {
            
            if #available(iOS 11.0, *) {
                urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: params, options: .sortedKeys)
            } else {
                // Fallback on earlier versions
            }
        }
        
        for header in allHeaders {
            urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
        }
        
        return urlRequest
    }
    
    func execute<T: Decodable>(urlRequest: URLRequest, urlSession: URLSession, decode: T.Type, completion: @escaping (Result<T, APIError>) -> Void) {
        
        
        let task = urlSession.dataTask(with: urlRequest) { data, response, error in
            
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
            
            guard let model = self.decodingTask(data: data, to: decode) else {
                completion(.failure(APIError.jsonConversionFailure(description: "Error Parcial")))
                return
            }
            
            completion(.success(model))
        }
        
        task.resume()
    }
    
    private func decodingTask<T: Decodable>(data: Data, to type: T.Type) -> T? {
        do {
            let generictModel = try JSONDecoder().decode(T.self, from: data)
            return generictModel
        } catch let err {
            print(err.localizedDescription)
            return nil
        }
    }
}
