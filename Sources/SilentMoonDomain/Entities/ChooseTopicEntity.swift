//
//  ChooseTopicEntity.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 20.08.26.
//

import Foundation

public struct ChooseTopicEntity: Decodable , Sendable{
    public let topicsId: Int
    public let title: String
    
    public init (topicsId: Int, title: String) {
        self.topicsId = topicsId
        self.title = title
    }
    
    
}
public struct UpdateTopicEntity: Decodable , Sendable {
    public let topicsId: Int
    
    public init (topicsId: Int) {
        self.topicsId = topicsId
    }
    
}
