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
                    
                    Spacer()
                   
                }
                .padding(24)
            }
    }
    
    var header: some View {
        VStack(spacing: 8) {
            Text("Currency Converter")
                .font(.title2)
                .foregroundStyle(.secondaryBlue)
            
            Text("Check live rates, set rate alets, receive notifications and more.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
        }
    }
    
    var tokensAreaView: some View {
        RoundedRectangle(cornerRadius: 15)
            .overlay {
                VStack(spacing: 12) {
                    TokenSelectorView()
                        .frame(height: 80)
                    TokenSelectorView()
                        .frame(height: 80)
                }
                .padding(20)
            }
            .padding(.top, 40)
            .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
