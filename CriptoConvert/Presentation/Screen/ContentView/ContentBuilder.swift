//
//  ContentBuilder.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 3/10/24.
//

import Foundation

class ContentBuilder {
   func build() -> ContentView {
       let dataSource = CoinDataSource(network: Network(baseURL: "api.coincap.io"))
       let repository = CoinRepository(coinDataSource: dataSource)
       let useCase = CoinUseCase(coinRepository: repository)
       let viewModel = ContentViewModel(coinUseCase: useCase)
       return ContentView(viewModel: viewModel)
    }
}
