//
//  HomeBuilder.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

class HomeBuilder {
   func build() -> HomeView {
       let dataSource = CoinDataSource(network: Network(baseURL: "https://api.coincap.io"))
       let repository = CoinRepository(coinDataSource: dataSource)
       let useCase = CoinUseCase(coinRepository: repository)
       let viewModel = HomeViewModel(coinUseCase: useCase)
       return HomeView(viewModel: viewModel)
    }
}
