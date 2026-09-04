//
//  SearchUseCase.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 26.08.26.
//

import Foundation


public protocol SearchUseCases: Sendable {
    func search(
        query: String,
        type: String?,
        page: Int,
        limit: Int
    ) async -> Result<
        SearchResponseEntity,
        Error
    >
}

public final class SearchUseCaseImpl: SearchUseCases {
    private let repository: SilentMoonRepository
    
    public init(
        repository: SilentMoonRepository
    ) {
        self.repository = repository
    }
    
    
    public func search(
        query: String,
        type: String?,
        page: Int,
        limit: Int
    ) async -> Result<
        SearchResponseEntity,
        any Error
    > {
        await repository
            .search(
                query: query,
                type: type,
                page: page,
                limit: limit
            )
    }

    
}
