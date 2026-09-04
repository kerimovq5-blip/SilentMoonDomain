//
//  GoogleUseCase.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 05.09.26.
//

import Foundation

public protocol GoogleUseCase: Sendable {
    func googleLogin(
        idToken: String
    ) async -> Result<AuthResponseEntity, Error>
}

public final class GoogleUseCaseImpl: GoogleUseCase {

    private let repository: SilentMoonRepository

    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }

    public func googleLogin(
        idToken: String
    ) async -> Result<AuthResponseEntity, Error> {
        await repository
            .googleLogin(
                idToken: idToken
            )
    }
}
