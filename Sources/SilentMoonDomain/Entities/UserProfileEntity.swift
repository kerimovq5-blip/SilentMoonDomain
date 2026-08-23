
//  UserProfileEntity.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 22.08.26.
//

import Foundation

public struct UserProfileEntity: Sendable {
    public let id: Int
    public let firstName: String
    public let lastName: String
    public let userName: String
    public let email: String
    public let avatarUrl: String?

    public init(
        id: Int,
        firstName: String,
        lastName: String,
        userName: String,
        email: String,
        avatarUrl: String?
    ) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.email = email
        self.avatarUrl = avatarUrl
    }
}
