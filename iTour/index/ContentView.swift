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
                        Text(destination.name)
                            .font(.headline)
                        
                        Text(
                            destination.date.formatted(
                                date: .long,
                                time: .shortened
                            )
                        )
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
