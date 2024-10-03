//
//  CoinUseCase.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

protocol CoinUseCaseProtocol {
    func fetchCoins() async throws -> [Coin]
}

class CoinUseCase: CoinUseCaseProtocol {
    
    let coinRepository: CoinRepositoryProtocol
    
    init(coinRepository: CoinRepositoryProtocol) {
        self.coinRepository = coinRepository
    }
}

extension CoinUseCase {
    func fetchCoins() async throws -> [Coin] {
        return try await coinRepository.getRemoteCoins()
    }
}
