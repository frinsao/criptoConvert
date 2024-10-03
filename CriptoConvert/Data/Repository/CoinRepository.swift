//
//  CoinRepository.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation


class CoinRepository: CoinRepositoryProtocol {
    
    let coinDataSource: CoinDataSourceProtocol
    
    init(coinDataSource: CoinDataSourceProtocol) {
        self.coinDataSource = coinDataSource
    }
    
    func getRemoteCoins() async throws -> [Coin] {
        do {
            return try await coinDataSource.fetchCoins().data.compactMap({$0.toDomain()})
        } catch {
            throw error
        }
    }
}

fileprivate extension CoinDTO {
    func toDomain() -> Coin {
        return Coin(id: self.id,
                    rank: self.rank,
                    symbol: self.symbol,
                    name: self.name,
                    supply: self.supply,
                    marketCapUsd: self.marketCapUsd,
                    volumeUsd24Hr: self.volumeUsd24Hr,
                    priceUsd: self.priceUsd,
                    changePercent24Hr: self.changePercent24Hr,
                    explorer: self.explorer)
    }
}
