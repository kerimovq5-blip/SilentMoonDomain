//
//  AuthUseCases.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 26.08.26.
//
import Foundation

public protocol AuthUseCases: Sendable {
    
    func register(
        name: String,
        email: String,
        password: String
    ) async -> Result<RegisterResponseEntity, Error>
    
    func verifyEmail(
        email: String,
        otp: String
    ) async -> Result<AuthResponseEntity, Error>
    
    func resendOtp(
        email: String
    ) async -> Result<ResendOtpResponseEntity, Error>
    
    func resetPassword(
        email: String,
        otp: String,
        newPassword: String
    ) async -> Result<SimpleMessageResponseEntity, Error>
}

public final class AuthUseCasesImpl: AuthUseCases {

    private let repository: SilentMoonRepository

    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }

    public func register(
        name: String,
        email: String,
        password: String
    ) async -> Result<RegisterResponseEntity, Error> {
        await repository.register(
            name: name,
            email: email,
            password: password
        )
    }

    public func verifyEmail(
        email: String,
        otp: String
    ) async -> Result<
        AuthResponseEntity,
        Error
    > {
        await repository.verifyEmail(
                email: email,
                otp: otp
            )
    }

    public func resendOtp(
        email: String
    ) async -> Result<
        ResendOtpResponseEntity,
        Error
    > {
        await repository.resendOtp(
                email: email
            )
    }
    
    public func resetPassword(
        email: String,
        otp: String,
        newPassword: String
    ) async -> Result<
        SimpleMessageResponseEntity,
        Error
    > {
        await repository.resetPassword(
                email: email,
                otp: otp,
                newPassword: newPassword
            )
    }
}
