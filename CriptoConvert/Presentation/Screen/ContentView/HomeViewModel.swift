//
//  HomeViewModel.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation


@Observable
class HomeViewModel: HomeViewModelProtocol {
    
    let useCase: CoinUseCase
    
    init(coinUseCase: CoinUseCase) {
        self.useCase = coinUseCase
    }
}
