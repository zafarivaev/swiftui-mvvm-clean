//
//  MoreInfoConfigurator.swift
//  Users
//
//  Created by Zafar on 29/06/21.
//

import Foundation

final class MoreInfoConfigurator {
    
    static func configureMoreInfoView(with user: User) -> MoreInfoView {
        let viewModel = MoreInfoViewModel(user: user)
        return MoreInfoView(viewModel: viewModel)
    }
}
