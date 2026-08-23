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

