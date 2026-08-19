//
//  CoursesResponseEntity.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 19.08.26.
//

import Foundation

public struct CourseEntity: Sendable{
    public let id: Int
    public let title: String
    public let description: String?
    public let imageUrl: String?
    
    public init(id: Int, title: String, description: String? = nil, imageUrl: String? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.imageUrl = imageUrl
    }
}

public struct CoursesResponseEntity: Sendable {
    public let items: [CourseEntity]
    public let page: Int
    public let limit: Int
    public let totalPages: Int?
    
    public init(items: [CourseEntity], page: Int, limit: Int, totalPages: Int? = nil) {
        self.items = items
        self.page = page
        self.limit = limit
        self.totalPages = totalPages
    }
}
