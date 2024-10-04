//
//  Coin.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 2/10/24.
//

import Foundation

class Coin {
    let id: String
    let rank: String
    var symbol: String
    let name: String
    let supply: String?
    let marketCapUsd: String?
    let volumeUsd24Hr: String?
    let priceUsd: String?
    let changePercent24Hr: String?
    let explorer: String?
    
    init(id: String, rank: String, symbol: String, name: String, supply: String?, marketCapUsd: String?, volumeUsd24Hr: String?, priceUsd: String?, changePercent24Hr: String?, explorer: String?) {
        self.id = id
        self.rank = rank
        self.symbol = symbol
        self.name = name
        self.supply = supply
        self.marketCapUsd = marketCapUsd
        self.volumeUsd24Hr = volumeUsd24Hr
        self.priceUsd = priceUsd
        self.changePercent24Hr = changePercent24Hr
        self.explorer = explorer
    }
}
