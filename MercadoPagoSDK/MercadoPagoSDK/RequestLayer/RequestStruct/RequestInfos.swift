//
//  RequestInfos.swift
//  AndesUI
//
//  Created by Matheus Leandro Martins on 15/07/21.
//

import Foundation

enum HTTPMethodType: String {
    case get     = "GET"
    case post    = "POST"
    case put     = "PUT"
    case delete  = "DELETE"
}

enum BackendEnvironment: String {
    case alpha = "alpha/"
    case beta = "beta/"
    case prod = "production/"
    case gamma = "gamma/"
}

internal protocol RequestInfos {

    var baseURL: URL { get }

    var environment: BackendEnvironment { get }

    var shouldSetEnvironment: Bool { get }

    var endpoint: String { get }

    var method: HTTPMethodType { get }

    var parameters: [String: Any]? { get }

    var headers: [String: String]? { get }

    var body: Data? { get }

    var parameterEncoding: ParameterEncode { get }
    
    var accessToken: String? { get }

}

extension RequestInfos {
    var baseURL: URL {
        return URL(string: "https://api.mercadopago.com/")!
    }

    var parameterEncoding: ParameterEncode {
        return ParameterEncodingImpl()
    }

    var environment: BackendEnvironment {
        return .prod
    }

    var shouldSetEnvironment: Bool {
        return true
    }
}
