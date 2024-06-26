//
//  FaceFacts_SwiftDataPractice_App.swift
//  FaceFacts(SwiftDataPractice)
//
//  Created by Danielle Smith on 4/12/24.
//

import SwiftUI
import SwiftData

@main
struct FaceFacts_SwiftDataPractice_App: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()
//
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
//        .modelContainer(sharedModelContainer)
    }
}
