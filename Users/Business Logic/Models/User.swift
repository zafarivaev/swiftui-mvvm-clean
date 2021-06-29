//
//  User.swift
//  Users
//
//  Created by Zafar on 28/06/21.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String?
    let title: String?
    let firstName: String
    let lastName: String
    let email: String
    let dateOfBirth: String?
    let registerDate: String?
    let phone: String?
    let picture: String?
}

extension User {
    static func fake() -> Self {
        return User(id: "123",
                    title: "Test",
                    firstName: "First Name",
                    lastName: "Last Name",
                    email: "test@gmail.com",
                    dateOfBirth: "1/1/1990",
                    registerDate: "1/1/2020",
                    phone: "+123456",
                    picture: nil)
    }
}
