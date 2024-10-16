//
//  TokenSelectorView.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 1/10/24.
//

import SwiftUI

struct TokenSelectorView: View {
    
    let coins: [Coin]
    let selectedCoin: Coin?
    let onChange: (Coin) -> Void
    @State private var selectedCoinSymbol: String

    init(coins: [Coin], selectedCoin: Coin?, onChange: @escaping (Coin) -> Void) {
        self.coins = coins
        self.selectedCoin = selectedCoin
        self.onChange = onChange
        self.selectedCoinSymbol = selectedCoin?.symbol ?? ""
    }

    var body: some View {

        VStack {
            
            Text("Ammount")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.customGrayDark)
                .font(.callout)
            
            HStack {
                Image("defaultImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Capsule())
                
                pickerView
                
                Spacer()
                
                priceView
            }
        }.task {
            if selectedCoinSymbol.isEmpty {

            }
            print(selectedCoin?.symbol ?? "")
        }
    }
    
    var pickerView: some View {
        Picker("", selection: $selectedCoinSymbol) {
            ForEach(coins, id: \.id) { token in
                Text(token.symbol)
                    .foregroundStyle(.primaryBlue)
                    .tag(token.symbol)
            }
        }
        .pickerStyle(.menu)
        .tint(.primaryBlue)
        .onChange(of: selectedCoinSymbol) { value, _ in
            updateSelectedToken(with: value)
        }
    }
    
    var priceView: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(.customGray)
            .frame(width: 150, height: 45)
            .overlay {
                Text(selectedCoin?.priceUsd ?? "")
                    .padding(20)
                    .multilineTextAlignment(.trailing)
                    .foregroundStyle(.black)
                    .bold()
            }
    }
    
    private func updateSelectedToken(with symbol: String) {
        if let newToken = coins.first(where: { $0.symbol == symbol }) {
            onChange(newToken)
        }
    }
}

#Preview {
    let mock = CoinMock().getCoins()
    TokenSelectorView(coins: mock, selectedCoin: mock[0], onChange: { _ in })
}
