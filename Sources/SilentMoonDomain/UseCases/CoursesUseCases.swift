//
//  CoursesUseCases.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 26.08.26.
//

public protocol CoursesUseCases: Sendable {
    func getCourses(page: Int, limit: Int) async -> Result<CoursesResponseEntity, Error>
    func getCourseDetail(id: Int) async -> Result<CourseEntity, Error>
    
}
public final class CoursesUseCasesImpl: CoursesUseCases {
    public let repository: SilentMoonRepository
    public init(repository: SilentMoonRepository) {
        self.repository = repository
    }
    
    public func getCourses(page: Int, limit: Int) async -> Result<CoursesResponseEntity, any Error> {
        await repository.getCourses(page: page, limit: limit)
    }
    
    public func getCourseDetail(id: Int) async -> Result<CourseEntity, any Error> {
        await repository.getCourseDetail(id: id)
    }
}
