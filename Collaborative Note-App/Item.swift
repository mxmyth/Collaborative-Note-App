//
//  Item.swift
//  Collaborative Note-App
//
//  Created by Mario Tetelepta  on 12/5/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
