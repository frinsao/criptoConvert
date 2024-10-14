//
//  CoinUseCase.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

class CoinUseCase: CoinUseCaseProtocol {
    
    let repository: CoinRepositoryProtocol
    
    init(coinRepository: CoinRepositoryProtocol) {
        self.repository = coinRepository
    }
    
    func fetchCoins() async throws -> [Coin] {
        return try await repository.getRemoteCoins()
    }
}
