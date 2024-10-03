//
//  CoinDataSource.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

final class CoinDataSource: CoinDataSourceProtocol {
    
    let network: Network
    
    init(network: Network) {
        self.network = network
    }
    
    func fetchCoins() async throws -> ResponseDTO {
        let response = try await network.getRequest("/v2/assets", type: ResponseDTO.self)
        return response
    }
}
