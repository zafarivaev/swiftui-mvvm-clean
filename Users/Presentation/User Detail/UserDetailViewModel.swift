//
//  UserDetailViewModel.swift
//  Users
//
//  Created by Zafar on 29/06/21.
//

import UIKit
import Combine

class UserDetailViewModel: ObservableObject {
    @Published public var avatar: UIImage = UIImage()
    
    public let user: User
    
    private var userPictureService: UserPictureServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(user: User,
         userPictureService: UserPictureServiceProtocol = UserPictureService()) {
        
        self.user = user
        self.userPictureService = userPictureService
    }
    
    public func onAppear() {
        getAvatarData()
    }
    
    private func getAvatarData() {
        guard let pictureUrlString = user.picture else {
            print("URL doesn't exist")
            return
        }
        
        userPictureService.getUserAvatarData(urlString: pictureUrlString)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error): print(error)
                case .finished: break
                }
            } receiveValue: { [weak self] data in
                guard let image = UIImage(data: data) else { return }
                self?.avatar = image
            }
            .store(in: &cancellables)
    }
}
