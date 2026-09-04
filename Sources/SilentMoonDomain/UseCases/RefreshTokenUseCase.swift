//
//  RefreshTokenUseCase.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 05.09.26.
//

import Foundation

public protocol RefreshTokenUseCase: Sendable {
    func refreshToken() async -> Result<
        AuthResponseEntity,
        Error
    >
}

public final class RefreshTokenUseCaseImpl: RefreshTokenUseCase {
    
    private let repository: SilentMoonRepository
    
    public init(
        repository: SilentMoonRepository
    ) {
        self.repository = repository
    }
    
    public func refreshToken() async -> Result<
        AuthResponseEntity,
        Error
    > {
        await repository
            .refreshToken()
    }
}
