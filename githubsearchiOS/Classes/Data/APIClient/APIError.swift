//
//  APIError.swift
//  githubsearchiOS
//
//  Created by Pich on 4/5/19.
//  Copyright © 2019 pich. All rights reserved.
//

import APIKit

struct APIError: Error {
    typealias Response = [String: Any]
    let statusCode: Int
    let message: String
    
    init(object: Any) {
        let dictionary = object as? Response
        statusCode = dictionary?["statusCode"] as? Int ?? 999
        message = dictionary?["message"] as? String ?? "Unknown Error occured."
    }
    
}
