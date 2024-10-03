//
//  Mocks.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

class Mock {
    
    init() {}
    
    func getCoins() -> [Coin] {
        return [
            Coin(
                   id: "bitcoin",
                   rank: "1",
                   symbol: "BTC",
                   name: "Bitcoin",
                   supply: "19762346.0000000000000000",
                   marketCapUsd: "1198909445223.7678832650945326",
                   volumeUsd24Hr: "29928512132.6446995316414716",
                   priceUsd: "60666.3523259722243131",
                   changePercent24Hr: "-1.0895387202832330",
                   explorer: "https://blockchain.info/"),

               Coin(
                   id: "ethereum",
                   rank: "2",
                   symbol: "ETH",
                   name: "Ethereum",
                   supply: "120371514.6697069300000000",
                   marketCapUsd: "283513330760.6805015376758052",
                   volumeUsd24Hr: "19620611333.0395146608356016",
                   priceUsd: "2355.3191262785559074",
                   changePercent24Hr: "-3.6647363423979253",
                   explorer: "https://etherscan.io/"),

               Coin(
                   id: "tether",
                   rank: "3",
                   symbol: "USDT",
                   name: "Tether",
                   supply: "119640575156.2291400000000000",
                   marketCapUsd: "119696825969.4778559319005861",
                   volumeUsd24Hr: "23207043649.2427672194933191",
                   priceUsd: "1.0004701650186424",
                   changePercent24Hr: "0.0390751295890387",
                   explorer: "https://www.omniexplorer.info/asset/31"),

               Coin(
                   id: "binance-coin",
                   rank: "4",
                   symbol: "BNB",
                   name: "BNB",
                   supply: "166801148.0000000000000000",
                   marketCapUsd: "90630231570.4880756423641732",
                   volumeUsd24Hr: "300660821.5873087954251910",
                   priceUsd: "543.3429724985350559",
                   changePercent24Hr: "-0.2461317735094728",
                   explorer: "https://etherscan.io/token/0xB8c77482e45F1F44dE1745F52C74426C631bDD52"),

               Coin(
                   id: "solana",
                   rank: "5",
                   symbol: "SOL",
                   name: "Solana",
                   supply: "468491129.4531622500000000",
                   marketCapUsd: "64423392642.3782818960163735",
                   volumeUsd24Hr: "1044556058.6400247913653161",
                   priceUsd: "137.5125132413399486",
                   changePercent24Hr: "-5.4584888570968286",
                   explorer: "https://explorer.solana.com/")
        ]
    }
}
