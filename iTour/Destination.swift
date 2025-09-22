//
//  Destination.swift
//  iTour
//
//  Created by Swantan Barua on 22/09/25.
//

import Foundation
import SwiftData

@Model
class Destination {
    
    // MARK: - PROPERTIES
    var name: String
    var details: String
    var date: Date
    var priority: Int
    
    // MARK: - INIT
    init(
        name: String,
        details: String,
        date: Date,
        priority: Int
    ) {
        self.name = name
        self.details = details
        self.date = date
        self.priority = priority
    }
}
