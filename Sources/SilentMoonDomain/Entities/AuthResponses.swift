//
//  AuthResponses.swift
//  SilentMoonNetwork
//
//  Created by Kerimov Qehreman on 09.08.26.
//
import Foundation
public struct SimpleMessageResponseEntity: Sendable {
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}
public struct ResendOtpResponseEntity: Sendable {
    public let message: String
    public let otpExpiresAt: String
    
    public init(message: String, otpExpiresAt: String) {
        self.message = message
        self.otpExpiresAt = otpExpiresAt
    }
}

public struct AuthResponseEntity: Sendable {
    public let accessToken: String
    public let refreshToken: String
    public let tokenType: String
    public let expiresIn: Int
    public let user: UserProfileEntity
    
    public init(
        accessToken: String,
        refreshToken: String,
        tokenType: String,
        expiresIn: Int,
        user: UserProfileEntity
    ) {
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.tokenType = tokenType
        self.expiresIn = expiresIn
        self.user = user
    }
}

public struct UserProfileEntity: Sendable {
    public let id: String
    public let name: String
    public let email: String
    public let emailVerified: Bool
    public let avatarUrl: String?
    public let createdAt: String
    
    public init(
        id: String,
        name: String,
        email: String,
        emailVerified: Bool,
        avatarUrl: String?,
        createdAt: String
    ) {
        self.id = id
        self.name = name
        self.email = email
        self.emailVerified = emailVerified
        self.avatarUrl = avatarUrl
        self.createdAt = createdAt
    }
}
