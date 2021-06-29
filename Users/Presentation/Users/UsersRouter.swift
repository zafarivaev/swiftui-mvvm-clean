//
//  UsersRouter.swift
//  Users
//
//  Created by Zafar on 29/06/21.
//

import SwiftUI

final class UsersRouter {
    
    public static func destinationForTappedUser(user: User) -> some View {
        return UserDetailConfigurator.configureUserDetailView(with: user)
    }
}
