import Foundation

//public typealias ResultApi = (Result<Data, APIError>) -> Void

enum Result<T, U> where U: Error {
    case success(T)
    case failure(U)
}
