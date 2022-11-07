import Foundation

public enum CustomError: Error {
    case decodingUnknown(source: String)
    case api(type: APIError)
    
    public enum APIError {
        case clientError(code: Int, endpoint: String, parameters: String)
        case serverError(code: Int, endpoint: String, parameters: String)
    }
}

extension CustomError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .decodingUnknown(source: let filename):
            return NSLocalizedString("bundle로부터 \(filename).json 해독 실패", comment: "알 수 없는 error")
        case .api(type: let type):
            switch type {
            case .clientError(code: let code, endpoint: let endpoint, parameters: let parameters):
                return NSLocalizedString("요청 중 발생한 APIError: \(endpoint), 파라미터 (\(parameters), 상태코드 \(code)", comment: "")
            case .serverError(code: let code, endpoint: let endpoint, parameters: let parameters):
                return NSLocalizedString("수행 중 발생한 APIError: \(endpoint), 파라미터 (\(parameters), 상태코드 \(code)", comment: "")
            }
        }
    }
}
