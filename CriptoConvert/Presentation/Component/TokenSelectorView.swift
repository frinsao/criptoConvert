//
//  TokenSelectorView.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 1/10/24.
//

import SwiftUI

struct TokenSelectorView: View {
    
    let tokens: [Coin] // TODO: - Remove mocks
    @State private var selectedToken = "BTC"
    @State private var amount: Double = 0.0
    
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
                
                Picker("", selection: $selectedToken ) {
                    ForEach(tokens, id: \.id) { token in
                        Text(token.symbol)
                            .foregroundStyle(.primaryBlue)
                    }
                }
                .pickerStyle(.menu)
                .tint(.primaryBlue)

                Spacer()
                
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(.customGray)
                    .frame(width: 150, height: 45)
                    .overlay {
                        TextField(value: $amount, format: .number, label: {})
                            .padding(20)
                            .multilineTextAlignment(.trailing)
                            .foregroundStyle(.black)
                            .bold()
                    }
            }
        }
    }
}

#Preview {
    let mock = Mock().getCoins()
    TokenSelectorView(tokens: mock)
}
