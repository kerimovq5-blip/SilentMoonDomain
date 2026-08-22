//
//  UseCases.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 19.08.26.
//

import Foundation
public protocol SilentMoonUseCases : Sendable {
    func register(name: String, email: String, password: String) async -> Result<RegisterResponseEntity, Error>
    
    func login(email: String, password: String) async -> Result<AuthResponseEntity, Error>
    
    func verifyEmail(email: String, otp: String) async -> Result<AuthResponseEntity, Error>
    
    func resendOtp(email: String) async -> Result<ResendOtpResponseEntity, Error>
    func googleLogin(idToken: String) async -> Result<AuthResponseEntity, Error>
    func forgotPassword(email: String) async -> Result<SimpleMessageResponseEntity, Error>
    func resetPassword(email: String, otp: String, newPassword: String) async -> Result<SimpleMessageResponseEntity, Error>
    func refreshToken() async -> Result<AuthResponseEntity, Error>
    func logout() async -> Result<Void, Error>
    
    func search(query: String, type: String?, page: Int, limit: Int) async -> Result<SearchResponseEntity, Error>
    
    func getTopics() async -> Result<[ChooseTopicEntity], Error>
    func updateTopics(topicIds: [Int]) async -> Result<[ChooseTopicEntity], Error>
    
    func getReminders() async -> Result<[ReminderResponseEntity], Error>
    func setReminder(time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, Error>
    func updateReminder(id: Int, time: String, days: [Int], message: String) async -> Result<ReminderResponseEntity, Error>
    func deleteReminder(id: Int) async -> Result<Void, Error>
    
    func getCourses(page: Int, limit: Int) async -> Result<CoursesResponseEntity, Error>
    func getCourseDetail(id: Int) async -> Result<CourseEntity, Error>
}
