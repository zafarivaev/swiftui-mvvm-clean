//
//  UserDetailRouter.swift
//  Users
//
//  Created by Zafar on 29/06/21.
//

import SwiftUI

final class UserDetailRouter {

    public static func destinationForMoreInfoAction(user: User) -> some View {
        return MoreInfoConfigurator.configureMoreInfoView(with: user)
    }
}
