//
//  ContentViewModel.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation


@Observable
class ContentViewModel: ContentViewModelProtocol {
    
        let coinUseCase: CoinUseCase
    
    init(coinUseCase: CoinUseCase) {
        self.coinUseCase = coinUseCase
    }
}
