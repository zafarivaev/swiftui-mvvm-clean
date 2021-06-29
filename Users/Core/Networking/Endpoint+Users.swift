//
//  Endpoint+Users.swift
//  Users
//
//  Created by Zafar on 28/06/21.
//

import Foundation

extension Endpoint {
    
    static var users: Self {
        return Endpoint(path: "/user")
    }
    
    static func users(count: Int) -> Self {
        return Endpoint(path: "/user", queryItems: [
            URLQueryItem(name: "limit", value: "\(count)")
        ])
    }
    
    static func user(id: String) -> Self {
        return Endpoint(path: "/user/\(id)")
    }
}
