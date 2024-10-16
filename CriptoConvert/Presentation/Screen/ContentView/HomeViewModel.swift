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
    var firstSelectedCoin: Coin?
    var secondSelectedCoin: Coin?
    private let useCase: CoinUseCase
    
    init(coinUseCase: CoinUseCase) {
        self.useCase = coinUseCase
        self.firstSelectedCoin = CoinMock().getCoins()[0]
        self.secondSelectedCoin = CoinMock().getCoins()[1]
    }
    
    func fillCoins() {
        Task {
            do {
                self.coins = try await useCase.fetchCoins()
                
                if self.coins.count > 2 {
                    self.firstSelectedCoin = self.coins[0]
                    self.secondSelectedCoin = self.coins[1]
                }
            }
        }
    }

    func  updateFirstSelectedCoin(_ coin: Coin) {
        self.firstSelectedCoin = coin
    }

    func updateSecondSelectedCoin(_ coin: Coin) {
        self.secondSelectedCoin = coin
    }
}
