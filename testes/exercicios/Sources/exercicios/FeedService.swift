//
//  FeedService.swift
//  exercicios
//
//  Created by Erick Kaique Da Silva on 22/11/19.
//

import Foundation


struct FeedService: EndPointTypeProtocol {
    var base: String = ""
    var path: String = "feed"
    var params: Encodable? = nil
    var headers: [String : String]? = nil
    var method: HTTPMethod = .post
}
