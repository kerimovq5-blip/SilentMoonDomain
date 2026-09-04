//
//  LogInUseCase.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 05.09.26.
//

import Foundation

public protocol LogInUseCase : Sendable {
    
    func login(
        email: String,
        password: String
    ) async -> Result<AuthResponseEntity, Error>

}
public final class LogInUseCaseImpl: LogInUseCase {
    
    private let repository: SilentMoonRepository
    
    public init (
        repository: SilentMoonRepository) {
        self.repository = repository
    }
    
    public func login(
        email: String,
        password: String
    ) async -> Result<AuthResponseEntity, Error> {
        await repository
            .login(
                email: email,
                password: password
            )
    }
}
