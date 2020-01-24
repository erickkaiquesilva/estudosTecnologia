//
//  Result.swift
//  exercicio2
//
//  Created by Erick Kaique Da Silva on 22/11/19.
//

import Foundation

enum Result<T, U> where U: Error {
    case success(T)
    case failure(U)
}
