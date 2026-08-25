//
//  TopicsUseCases.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 26.08.26.
//

import Foundation

public protocol TopicsUseCases: Sendable {
    func getTopics() async -> Result<[ChooseTopicEntity], Error>
    func updateTopics(topicIds: [Int]) async -> Result<[ChooseTopicEntity], Error>
}

public final class TopicsUseCasesImpl: TopicsUseCases {
    private let repository: SilentMoonRepository

    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }
    
    public func getTopics() async -> Result<[ChooseTopicEntity], any Error> {
        await repository.getTopics()
    }

    public func updateTopics(topicIds: [Int]) async -> Result<[ChooseTopicEntity], any Error> {
        await repository.updateTopics(topicIds: topicIds)
    }
    
}
