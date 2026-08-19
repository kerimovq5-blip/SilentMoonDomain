//
//  UseCasesImplemantation.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 19.08.26.
//

import Foundation

final class UseCasesImplemantation: SilentMoonUseCases {
    
    private let repository: SilentMoonRepository
    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }
    
    func register(name: String, email: String, password: String) async -> Result<RegisterResponseEntity, any Error> {
        await repository.register(name: name, email: email, password: password)
    }

    func login(email: String, password: String) async -> Result<AuthResponseEntity, any Error> {
        await repository.login(email: email, password: password)
    }

    func verifyEmail(email: String, otp: String) async -> Result<AuthResponseEntity, any Error> {
        await repository.verifyEmail(email: email, otp: otp)
    }

    func resendOtp(email: String) async -> Result<ResendOtpResponseEntity, any Error> {
        await repository.resendOtp(email: email)
    }

    func googleLogin(idToken: String) async -> Result<AuthResponseEntity, any Error> {
        await repository.googleLogin(idToken: idToken)
    }

    func forgotPassword(email: String) async -> Result<SimpleMessageResponseEntity, any Error> {
        await repository.forgotPassword(email: email)
    }

    func resetPassword(email: String, otp: String, newPassword: String) async -> Result<SimpleMessageResponseEntity, any Error> {
        await repository.resetPassword(email: email, otp: otp, newPassword: newPassword)
    }

    func refreshToken() async -> Result<AuthResponseEntity, any Error> {
        await repository.refreshToken()
    }

    func logout() async -> Result<Void, any Error> {
        await repository.logout()
    }

    func search(query: String, type: String?, page: Int, limit: Int) async -> Result<SearchResponseEntity, any Error> {
        await repository.search(query: query, type: type, page: page, limit: limit)
    }

    func getTopics() async -> Result<[String], any Error> {
        await repository.getTopics()
    }

    func updateTopics(topicIds: [String]) async -> Result<[String], any Error> {
        await repository.updateTopics(topicIds: topicIds)
    }

    func getReminders() async -> Result<[ReminderResponseEntity], any Error> {
        await repository.getReminders()
    }

    func setReminder(time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, any Error> {
        await repository.setReminder(time: time, days: days, message: message)
    }

    func updateReminder(id: Int, time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, any Error> {
        await repository.updateReminder(id: id, time: time, days: days, message: message)
    }

    func deleteReminder(id: Int) async -> Result<Void, any Error> {
        await repository.deleteReminder(id: id)
    }

    func getCourses(page: Int, limit: Int) async -> Result<CoursesResponseEntity, any Error> {
        await repository.getCourses(page: page, limit: limit)
    }

    func getCourseDetail(id: Int) async -> Result<CourseEntity, any Error> {
        await repository.getCourseDetail(id: id)
    }

    
}
