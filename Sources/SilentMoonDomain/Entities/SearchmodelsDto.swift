//
//  Searchmodels.swift
//  SilentMoon
//
//  Created by Kerimov Qehreman on 02.08.26.
//

import Foundation

public struct CourseSummary{
    public let id: String
    public let title: String
    public let subtitle: String
    public let type: String
    public let categoryId: String
    public let imageUrl: String
    public let durationSec: Int
    public let isFeatured: Bool
    public let narrators: [String]
    
    public init(id: String, title: String, subtitle: String, type: String, categoryId: String, imageUrl: String, durationSec: Int, isFeatured: Bool, narrators: [String]) {
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

public struct PaginationMeta {
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

public struct SearchResponse {
    public let query: String
    public let data: [CourseSummary]
    public let meta: PaginationMeta
    
    public init(query: String, data: [CourseSummary], meta: PaginationMeta) {
        self.query = query
        self.data = data
        self.meta = meta
    }
}
