//
//  Collaborative_Note_AppApp.swift
//  Collaborative Note-App
//
//  Created by Mario Tetelepta  on 12/5/24.
//

import SwiftUI
import SwiftData

@main
struct Collaborative_Note_AppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
