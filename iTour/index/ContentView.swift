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
    @Environment(\.modelContext) private var modelContext
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
            .toolbar {
                Button {
                    addDestination(name: "Madrid")
                } label: {
                    Text("Add Destination")
                }
            }
        }
    }
    
    func addDestination(name: String) {
        let rome = Destination(name: name)
        
        modelContext.insert(rome)
    }
}

#Preview {
    ContentView()
}
