//
//  UsersApp.swift
//  Users
//
//  Created by Zafar on 28/06/21.
//

import SwiftUI

@main
struct UsersApp: App {

    var body: some Scene {
        WindowGroup {
            UsersConfigurator.configureUsersView()
        }
    }
}
