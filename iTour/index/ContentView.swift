//
//  ContentView.swift
//  iTour
//
//  Created by Swantan Barua on 22/09/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @Query private var destinations: [Destination]
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(destinations) { destination in 
                    VStack(alignment: .leading) {
                        
                    }
                }
            }
            .navigationTitle("iTour")
        }
    }
}

#Preview {
    ContentView()
}
