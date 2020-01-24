//
//  EndPoint.swift
//  exercicios
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

protocol EndPointTypeProtocol {
    var base: String { get }
    var path: String { get }
    var params: Encodable? { get }
    var headers: [String: String]? { get }
    var method: HTTPMethod { get }
}

enum UserEndPoint {
    case userId(Int)
    case login(login: Login)
}

extension UserEndPoint: EndPointTypeProtocol {
    var method: HTTPMethod {
        return .post
    }
    
    var base: String {
        return "http://3.211.16.250"
    }
    
    var path: String {
        switch self {
        case .userId(let id):
            return "/todos/\(id)"
        case .login:
            return "/login"
        }
    }
    
    var params: Encodable? {
        switch self {
        case .login(let login):
            return login
        case .userId(_):
            return nil
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .login:
            return ["Content-type": "application/json"]
        case .userId(_):
            return nil
        }
    }
    
}
