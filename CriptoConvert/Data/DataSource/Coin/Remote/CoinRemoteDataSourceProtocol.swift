//
//  CoinDataSourceProtocol.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

protocol CoinRemoteDataSourceProtocol {
    func fetchCoins() async throws -> ResponseDTO
}
