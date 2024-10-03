//
//  CoinDataSourceProtocol.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

protocol CoinDataSourceProtocol {
    func fetchCoins() async throws -> ResponseDTO
}
