//
//  Searchmodels.swift
//  SilentMoon
//
//  Created by Kerimov Qehreman on 02.08.26.
//

import Foundation

public struct CourseSummaryEntity{
    public let id: Int
    public let title: String
    public let subtitle: String
    public let type: String
    public let categoryId: Int
    public let imageUrl: String
    public let durationSec: Int
    public let isFeatured: Bool
    public let narrators: [String]
    
    public init(id: Int, title: String, subtitle: String, type: String, categoryId: Int, imageUrl: String, durationSec: Int, isFeatured: Bool, narrators: [String]) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.type = type
        self.categoryId = categoryId
        self.imageUrl = imageUrl
        self.durationSec = durationSec
        self.isFeatured = isFeatured
        self.narrators = narrators
    }
}

public struct PaginationMetaEntity {
    public let page: Int
    public let limit: Int
    public let total: Int
    public let totalPages: Int
    
    public init (page: Int, limit: Int, total: Int, totalPages: Int) {
        self.page = page
        self.limit = limit
        self.total = total
        self.totalPages = totalPages
    }
}

public struct SearchResponseEntity {
    public let query: String
    public let data: [CourseSummaryEntity]
    public let meta: PaginationMetaEntity
    
    public init(
        query: String,
        data: [CourseSummaryEntity],
        meta: PaginationMetaEntity
    ) {
        self.query = query
        self.data = data
        self.meta = meta
    }
}
