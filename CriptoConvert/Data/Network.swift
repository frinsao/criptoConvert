//
//  NetworkManager.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case invalidResponse
    case badDecoded
    case badResponse
    case badRequest

    func localized() -> String {
        switch self {
        case .badURL:
            return "¡Vaya! Parece que la URL no existe."
        case .invalidResponse:
            return "Vaya, parece que la comunicación con el servidor no ha sido la esperada"
        case .badDecoded:
            return "Parece que los datos recibidos son diferentes a los esperados."
        case .badResponse:
            return "Parece que algo en la llamada al servidor no ha ido como se esperaba."
        case .badRequest:
            return "Parece que la petición al servidor a fallado"
        }
    }
}

class Network {
    
    let baseURL: String
    
    init(baseURL: String) {
        self.baseURL = baseURL
    }
    
    func getRequest<T: Decodable>(_ endPoint: String, type: T.Type) async throws -> T {
        guard let url = URL(string: baseURL + endPoint) else {
            throw NetworkError.badURL
        }
        
        do {

            let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
            guard let response = response as? HTTPURLResponse else {
                throw NetworkError.invalidResponse
            }

            do {
                if (200..<300).contains(response.statusCode) {
                    return try JSONDecoder().decode(type.self, from: data)
                } else {
                    throw NetworkError.badResponse
                }
            } catch {
                throw NetworkError.badDecoded
            }

        } catch {
            throw NetworkError.badRequest
        }
    }
}
