//
//  Coin.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 2/10/24.
//

struct CoinDTO: Codable {
    let id: String
    let rank: String
    let symbol: String
    let name: String
    let supply: String
    let maxSupply: String?
    let marketCapUsd: String
    let volumeUsd24Hr: String
    let priceUsd: String
    let changePercent24Hr: String
    let vwap24Hr: String
    let explorer: String?
}
