//
//  RequisicaoServiceProtocol.swift
//  exercicios
//
//  Created by Erick Kaique Da Silva on 22/11/19.
//

import Foundation

public protocol RequisicaoServiceProtocol {
    var base: String { get }
    var path: String { get }
    var params: Encodable? { get }
    var headers: [String: String]? { get }
}
