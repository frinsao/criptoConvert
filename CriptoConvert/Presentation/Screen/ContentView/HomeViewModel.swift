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
    private let useCase: CoinUseCase
    
    init(coinUseCase: CoinUseCase) {
        self.useCase = coinUseCase
    }
    
    func fillCoins() {
        Task {
            do {
                self.coins = try await useCase.fetchCoins()
            }
        }
    }
}
