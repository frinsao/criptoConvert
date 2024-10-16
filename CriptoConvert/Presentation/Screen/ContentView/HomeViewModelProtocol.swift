//
//  HomeViewProtocol.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

protocol HomeViewModelProtocol {
    var coins: [Coin] { get }
    var firstSelectedCoin: Coin? { get }
    var secondSelectedCoin: Coin? { get }

    func fillCoins()
    func updateFirstSelectedCoin(_ coin: Coin)
    func updateSecondSelectedCoin(_ coin: Coin)
}
