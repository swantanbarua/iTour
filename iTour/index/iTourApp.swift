//
//  iTourApp.swift
//  iTour
//
//  Created by Swantan Barua on 22/09/25.
//

import SwiftUI
import SwiftData

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Destination.self)
        }
    }
}
