//
//  DomainError.swift
//  SilentMoonDomain
//
//  Created by Kerimov Qehreman on 07.09.26.
//
import Foundation

public enum DomainError: Error, Equatable {
    case connectivity
    case unauthorized
    case notFound
    case invalidInput(message: String)
    case server
    case forbidden
    case unexpected
    
    
    public var localizedMessage: String {
        switch self {
        case .connectivity:
            return "İnternet bağlantınızı yoxlayın və yenidən cəhd edin."
        case .unauthorized:
            return "Sessiyanızın vaxtı bitib. Zəhmət olmasa yenidən daxil olun."
        case .notFound:
            return "Axtardığınız məlumat tapılmadı."
        case .invalidInput(let message):
            return message
        case .forbidden:
            return "Bu əməliyyat üçün icazəniz yoxdur"
        case .server:
            return "Serverdə problem yarandı. Bir az sonra yenidən cəhd edin."
        case .unexpected:
            return "Naməlum xəta baş verdi."
        }
    }
    
}
