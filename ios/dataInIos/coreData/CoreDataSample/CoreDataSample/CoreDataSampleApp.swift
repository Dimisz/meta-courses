//
//  CoreDataSampleApp.swift
//  CoreDataSample
//
//  Created by VS on 20.02.23.
//

import SwiftUI

@main
struct CoreDataSampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
