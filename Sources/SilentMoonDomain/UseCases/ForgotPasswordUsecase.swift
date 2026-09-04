//
//  ForgotPasswordUsecase.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 05.09.26.
//

import Foundation

public protocol ForgotPasswordUsecase : Sendable {
    func forgotPassword(
        email: String
    ) async -> Result<SimpleMessageResponseEntity, Error>
}
public final class ForgotPasswordUsecaseImpl : ForgotPasswordUsecase {
    
    public let repository: SilentMoonRepository
    public init (repository: SilentMoonRepository) {
        self.repository = repository
    }
    
    
    public func forgotPassword(email: String) async -> Result<SimpleMessageResponseEntity, any Error> {
        await repository
            .forgotPassword(
            email: email
            )
    }

    
}
