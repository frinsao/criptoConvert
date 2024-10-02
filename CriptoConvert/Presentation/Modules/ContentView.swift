//
//  ContentView.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 1/10/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        Color.customGray
            .edgesIgnoringSafeArea(.all)
            .overlay {
                VStack {
                    header
                    
                    tokensAreaView
                        .frame(height: 320)
                    
                    bottomInfoView
                    Spacer()
                    
                }
                .padding(24)
            }
    }
    
    var header: some View {
        VStack(spacing: 8) {
            Text("Currency Converter")
                .font(.title2)
                .bold()
                .foregroundStyle(.secondaryBlue)
            
            Text("Check live rates, set rate alets, receive notifications and more.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .foregroundStyle(.customGrayDark)
        }
    }
    
    var tokensAreaView: some View {
        RoundedRectangle(cornerRadius: 15)
            .overlay {
                VStack(spacing: 12) {
                    TokenSelectorView()
                        .frame(height: 80)
                    
                    switchTokensView
                        .frame(height: 50)
                    
                    TokenSelectorView()
                        .frame(height: 80)
                }
                .padding(20)
            }
            .padding(.top, 40)
            .foregroundStyle(.white)
    }
    
    var switchTokensView: some View {
        ZStack {
            Rectangle()
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.customGray)
            
            Capsule()
                .overlay {
                    Image(systemName: "arrow.up.arrow.down")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 20, height: 20)
                        .padding(10)
                        .foregroundStyle(.white)
                }
                .foregroundStyle(.secondaryBlue)
                .frame(width: 50, height: 50)
        }
    }
    
    var bottomInfoView: some View {
        VStack(spacing: 8) {
            
            Text("Indicative Exchange Rate")
                .font(.body)
                .foregroundStyle(.customGrayDark)
                .frame(maxWidth: .infinity, alignment: .leading)
        
            Text("1 SGD = 0.7367 USD")
                .font(.body)
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
        
        }
        .padding(.vertical, 20)
        
    }
}

#Preview {
    ContentView()
}
