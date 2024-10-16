//
//  CoinDataSource.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

final class CoinRemoteDataSource: CoinRemoteDataSourceProtocol {

    let network: Network
    
    init(network: Network) {
        self.network = network
    }
    
    func fetchCoins() async throws -> ResponseDTO {
        return try await network.getRequest("/v2/assets", type: ResponseDTO.self)
    }
}
