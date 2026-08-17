//
//  ErrorEntity.swift
//  SilentMoonData
//
//  Created by Kerimov Qehreman on 15.08.26.
//

public struct ErrorEntity : Error {
   public var statuscode: Int
   public let statusmessage: String
  public let success: Bool
    
    public init(statuscode: Int, statusmessage: String, success: Bool) {
        self.statuscode = statuscode
        self.statusmessage = statusmessage
        self.success = success
    }
   
   public var localizedDescription: String {
        return statusmessage

    }
}
