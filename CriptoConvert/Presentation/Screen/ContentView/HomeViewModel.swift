//
//  HomeViewModel.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

@Observable
class HomeViewModel: HomeViewModelProtocol {
    
    var coins: [Coin] = []
    var firstSelectedToken: Coin
    var secondSelectedToken: Coin
    private let useCase: CoinUseCase
    
    init(coinUseCase: CoinUseCase) {
        self.useCase = coinUseCase
        self.firstSelectedToken = Mock().getCoins()[0]
        self.secondSelectedToken = Mock().getCoins()[1]
    }
    
    func fillCoins() {
        Task {
            do {
                self.coins = try await useCase.fetchCoins()
                if self.coins.count > 2 {
                    self.firstSelectedToken = self.coins[0]
                    self.secondSelectedToken = self.coins[1]
                }
            }
        }
    }
}
