//
//  UseCasesImplemantation.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 19.08.26.
//

import Foundation

public final class UseCasesImplemantation: SilentMoonUseCases , @unchecked Sendable {
    
        private let networkManager: NetworkManager<ApiErrorEnvelope>
        private let tokenStore: TokenStore

        private var isRefreshing = false
        private var refreshCallbacks: [(Bool) -> Void] = []

        public init(networkManager: NetworkManager<ApiErrorEnvelope>, tokenStore: TokenStore) {
            self.networkManager = networkManager
            self.tokenStore = tokenStore
        }
    
    private let repository: SilentMoonRepository
    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }
    
   public func register(name: String, email: String, password: String) async -> Result<RegisterResponseEntity, any Error> {
        await repository.register(name: name, email: email, password: password)
    }

    public func login(email: String, password: String) async -> Result<AuthResponseEntity, any Error> {
        await repository.login(email: email, password: password)
    }

    public func verifyEmail(email: String, otp: String) async -> Result<AuthResponseEntity, any Error> {
        await repository.verifyEmail(email: email, otp: otp)
    }

    public func resendOtp(email: String) async -> Result<ResendOtpResponseEntity, any Error> {
        await repository.resendOtp(email: email)
    }

    public func googleLogin(idToken: String) async -> Result<AuthResponseEntity, any Error> {
        await repository.googleLogin(idToken: idToken)
    }

    public func forgotPassword(email: String) async -> Result<SimpleMessageResponseEntity, any Error> {
        await repository.forgotPassword(email: email)
    }

    public func resetPassword(email: String, otp: String, newPassword: String) async -> Result<SimpleMessageResponseEntity, any Error> {
        await repository.resetPassword(email: email, otp: otp, newPassword: newPassword)
    }

    public func refreshToken() async -> Result<AuthResponseEntity, any Error> {
        await repository.refreshToken()
    }

    public func logout() async -> Result<Void, any Error> {
        await repository.logout()
    }

    public func search(query: String, type: String?, page: Int, limit: Int) async -> Result<SearchResponseEntity, any Error> {
        await repository.search(query: query, type: type, page: page, limit: limit)
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

    public func getCourses(page: Int, limit: Int) async -> Result<CoursesResponseEntity, any Error> {
        await repository.getCourses(page: page, limit: limit)
    }

    public func getCourseDetail(id: Int) async -> Result<CourseEntity, any Error> {
        await repository.getCourseDetail(id: id)
    }

    
}
