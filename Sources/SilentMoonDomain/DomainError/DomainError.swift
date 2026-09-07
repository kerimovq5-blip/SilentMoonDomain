
import Foundation
 
public enum DomainError: Error, Equatable {
    case connectivity
    case unauthorized
    case notFound
    case invalidInput(message: String, code: String? = nil)
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
        case .invalidInput(let message, _):
            return message
        case .forbidden:
            return "Bu əməliyyat üçün icazəniz yoxdur"
        case .server:
            return "Serverdə problem yarandı. Bir az sonra yenidən cəhd edin."
        case .unexpected:
            return "Naməlum xəta baş verdi."
        }
    }
 
    /// Backend-dən gələn maşın-oxunaqlı kod (məs. "EMAIL_NOT_VERIFIED"), yalnız .invalidInput üçün mövcud ola bilər.
    public var code: String? {
        if case .invalidInput(_, let code) = self {
            return code
        }
        return nil
    }
}
 
extension DomainError: LocalizedError {
    public var errorDescription: String? { localizedMessage }
}
