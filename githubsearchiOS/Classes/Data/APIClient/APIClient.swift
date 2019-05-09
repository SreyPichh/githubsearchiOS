//
//  APIClient.swift
//  githubsearchiOS
//
//  Created by Pich on 4/5/19.
//  Copyright © 2019 pich. All rights reserved.
//

import APIKit
import RxSwift
import Result
import Himotoki

struct APIClient {
    public static var configuration = URLSessionConfiguration.default
    static var session: Session {
        self.configuration.urlCache?.diskCapacity = 0
        self.configuration.urlCache?.memoryCapacity = 0
        
        return Session(adapter: URLSessionConfiguration(configuration: configuration))
    }
    struct Fetch {
        static func get(query: String)-> Observable<APIClient.Fetch.ResponseFetchRepositoryDecode> {
            return Session.sendRequest(
                request: Fetch
            )
        }
    }
}

extension APIClient.Fetch {
    
    struct Response: RequestType {
        
    }
    
    struct ResponseFetchRepositoryDecode: Himotoki.Decodable {
        let items: [ResponseFetchRepositoryItems]
        
        static func decode(_ e: Extractor) throws -> APIClient.Fetch.ResponseFetchRepositoryDecode {
            return try ResponseFetchRepositoryDecode(items: e <|| "items")
        }
    }
    struct ResponseFetchRepositoryItems: Himotoki.Decodable {
        let id: Int
        let name: String
        let fullName: String
        let htmlUrl: String
        
        static func decode(_ e: Extractor) throws -> APIClient.Fetch.ResponseFetchRepositoryItems {
            return try ResponseFetchRepositoryItems (
                id: e <| "id" ,
                name: e <| "name",
                fullName: e <| "full_name",
                htmlUrl: e <| "html_url"
            )
        }
    }
}

