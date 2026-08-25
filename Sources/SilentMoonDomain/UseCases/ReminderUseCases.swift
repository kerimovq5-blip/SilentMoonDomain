//
//  ReminderUseCases.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 26.08.26.
//
import Foundation

public protocol ReminderUseCases: Sendable {
    func getReminders() async -> Result<[ReminderResponseEntity], Error>
    func setReminder(time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, Error>
    func updateReminder(id: Int, time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, Error>
    func deleteReminder(id: Int) async -> Result<Void, Error>
}

public final class ReminderUseCasesImpl: ReminderUseCases {
    
    public let repository: SilentMoonRepository
    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }
    public func getTopics() async -> Result<[ChooseTopicEntity], any Error> {
        await repository.getTopics()
    }

    public func updateTopics(topicIds: [Int]) async -> Result<[ChooseTopicEntity], any Error> {
        await repository.updateTopics(topicIds: topicIds)
    }

    public func getReminders() async -> Result<[ReminderResponseEntity], any Error> {
        await repository.getReminders()
    }

    public func setReminder(time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, any Error> {
        await repository.setReminder(time: time, days: days, message: message)
    }

    public func updateReminder(id: Int, time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, any Error> {
        await repository.updateReminder(id: id, time: time, days: days, message: message)
    }

    public  func deleteReminder(id: Int) async -> Result<Void, any Error> {
        await repository.deleteReminder(id: id)
    }
}
