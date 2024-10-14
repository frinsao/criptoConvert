//
//  TokenSelectorView.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 1/10/24.
//

import SwiftUI

struct TokenSelectorView: View {
    
    let tokens: [Coin] // TODO: - Remove mocks
    @Binding var selectedToken: Coin
    @State private var selectedCoin = ""
    
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
        }
    }
    
    var pickerView: some View {
        Picker("", selection: $selectedCoin) {
            ForEach(tokens, id: \.id) { token in
                Text(token.symbol)
                    .foregroundStyle(.primaryBlue)
                    .tag(token.symbol)
            }
        }
        .pickerStyle(.menu)
        .tint(.primaryBlue)
        .onChange(of: selectedCoin) { value in
            updateSelectedToken(with: value)
        }
    }
    
    var priceView: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(.customGray)
            .frame(width: 150, height: 45)
            .overlay {
                Text(selectedToken.priceUsd ?? "")
                    .padding(20)
                    .multilineTextAlignment(.trailing)
                    .foregroundStyle(.black)
                    .bold()
            }
    }
    
    private func updateSelectedToken(with symbol: String) {
            if let newToken = tokens.first(where: { $0.symbol == symbol }) {
                selectedToken = newToken
            }
        }
}

#Preview {
    let mock = Mock().getCoins()
    TokenSelectorView(tokens: mock, selectedToken: .constant(mock[0]))
}
