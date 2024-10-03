//
//  HomeViewProtocol.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

protocol HomeViewModelProtocol {
    var coins: [Coin] { get }
    
    func fillCoins()
}
