//
//  CoinRepository.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

class CoinRepository: CoinRepositoryProtocol {
    let dataSource: CoinRemoteDataSourceProtocol

    init(coinRemoteDataSource: CoinRemoteDataSourceProtocol) {
        self.dataSource = coinRemoteDataSource
    }

    func getRemoteCoins() async throws -> [Coin] {
        do {
            return try await dataSource.fetchCoins().data.compactMap { $0.toDomain() }
        } catch {
            // TODO: - ERROR HANDLER
            throw error
        }
    }
}

private extension CoinDTO {
    func toDomain() -> Coin {
        return Coin(id: id,
                    rank: rank,
                    symbol: symbol,
                    name: name,
                    supply: supply,
                    marketCapUsd: marketCapUsd,
                    volumeUsd24Hr: volumeUsd24Hr,
                    priceUsd: priceUsd,
                    changePercent24Hr: changePercent24Hr,
                    explorer: explorer)
    }
}
