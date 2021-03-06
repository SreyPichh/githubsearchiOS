//
//  RequestType.swift
//  githubsearchiOS
//
//  Created by Pich on 4/5/19.
//  Copyright © 2019 pich. All rights reserved.
//

import APIKit
import Himotoki

protocol RequestType: APIKit.Request {}

extension RequestType{
//    Base URL
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
        
    }
    var headerFields: [String : String] {
        return [
            "Accept": "application/json",
            "Accept-Encoding": "gzip"
        ]
    }
    func intercept(urlRequest: URLRequest) throws -> URLRequest {
        return urlRequest
    }
    func intercept(object: Any, urlResponse: HTTPURLResponse) throws -> Any {
        guard(200..<300).contains(urlResponse.statusCode) else {
            throw APIError(object: object)
        }
        return object
    }
}

extension RequestType where Response: Himotoki.Decodable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> RequestType.Response {
        return try decodeValue(object)
    }
}
