//
//  CoinUseCaseProtocol.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

protocol CoinUseCaseProtocol {
    func fetchCoins() async throws -> [Coin]
}
