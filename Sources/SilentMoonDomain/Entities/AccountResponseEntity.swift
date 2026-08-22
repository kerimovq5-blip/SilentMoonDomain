//
//  AccountResponseEntity.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 22.08.26.
//

public struct AccountResponseEntity: Encodable , Sendable{
    public let id: Int?
    public let firstName: String?
    public let lastName: String?
    public let userName: String?
    public let email: String?
    public let avatarUrl: String?

    
}
