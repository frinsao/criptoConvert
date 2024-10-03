//
//  CoinRepositoryProtocol.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

protocol CoinRepositoryProtocol {
    func getRemoteCoins() async throws -> [Coin]
}
