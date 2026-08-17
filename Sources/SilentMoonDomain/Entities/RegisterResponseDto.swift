//
//  RegisterResponseEntity.swift
//  SilentMoon
//
//  Created by Kerimov Qehreman on 30.07.26.
//

import Foundation
 
public struct RegisterResponseEntity {
    public let message: String
    public let email: String
    public let otpExpiresAt: String
    
    public init(message: String, email: String , otpExpiresAt: String) {
        self.message = message
        self.email = email
        self.otpExpiresAt = otpExpiresAt
    }

}
