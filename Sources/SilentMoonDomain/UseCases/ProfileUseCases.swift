//
//  ProfileUseCases.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 26.08.26.
//

import Foundation


public protocol ProfileUseCases: Sendable {
    func getProfile() async -> Result<UserProfileEntity, Error>
    func updateProfile(firstName: String?, lastName: String?, avatarUrl: String?) async -> Result<UserProfileEntity, Error>
    
}
public final class ProfileUseCasesImpl: ProfileUseCases {
    private let repository: SilentMoonRepository
    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }

    public func getProfile() async -> Result<UserProfileEntity, any Error> {
           await repository.getProfile()
       }
    
       public func updateProfile(firstName: String?, lastName: String?, avatarUrl: String?) async -> Result<UserProfileEntity, any Error> {
           await repository.updateProfile(firstName: firstName, lastName: lastName, avatarUrl: avatarUrl)
       }
}

