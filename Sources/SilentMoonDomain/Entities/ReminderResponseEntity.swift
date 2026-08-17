//
//  ReminderResponseEntity.swift
//  SilentMoonNetwork
//
//  Created by Kerimov Qehreman on 14.08.26.
//

import Foundation
 
public struct ReminderResponseEntity: Sendable {
    public let id: Int
    public let time: String
    public let days: [Int]
    public let message: String
    
    public init (id: Int, time: String, days: [Int], message: String) {
        self.id = id
        self.time = time
        self.days = days
        self.message = message
    }
 
}
