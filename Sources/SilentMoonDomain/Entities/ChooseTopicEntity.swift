//
//  ChooseTopicEntity.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 20.08.26.
//

import Foundation

public struct ChooseTopicEntity: Decodable , Sendable{
    public let id: Int
    public let title: String
    
    public init (id: Int, title: String) {
        self.id = id
        self.title = title
    }
}
public struct UpdateTopicEntity: Decodable , Sendable {
    public let id: Int
    
    public init (id: Int) {
        self.id = id
    }
    
}
