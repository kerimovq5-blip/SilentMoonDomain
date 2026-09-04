//
//  LogOutUseCase.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 05.09.26.
//


import Foundation

public protocol LogoutUseCase: Sendable {
    func logout() async -> Result<
        Void,
        Error
    >
}

public final class LogoutUseCaseImpl: LogoutUseCase {
    
    private let repository: SilentMoonRepository
    
    public init(
        repository: SilentMoonRepository
    ) {
        self.repository = repository
    }
    
    public func logout() async -> Result<
        Void,
        Error
    > {
        await repository
            .logout()
    }
}
