//
//  Response.swift
//  CriptoConvert
//
//  Created by Jesu Castellano on 2/10/24.
//

import Foundation

struct Response: Codable {
    let data: [CoinDTO]
    let timestamp: Int
}
