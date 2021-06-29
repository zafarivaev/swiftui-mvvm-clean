//
//  MoreInfoView.swift
//  Users
//
//  Created by Zafar on 29/06/21.
//

import SwiftUI

struct MoreInfoView: View {
    
    let viewModel: MoreInfoViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("ID: \(viewModel.user.id ?? "N/A")")
            Text("Full Name: \(viewModel.user.firstName) \(viewModel.user.lastName)")
            Text("Email: \(viewModel.user.email)")
            Text("Registration Date: \(viewModel.user.registerDate ?? "N/A")")
            Text("Phone: \(viewModel.user.phone ?? "N/A")")
        }
    }
}

struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoView(
            viewModel: MoreInfoViewModel(
                user: User.fake()
            )
        )
    }
}
