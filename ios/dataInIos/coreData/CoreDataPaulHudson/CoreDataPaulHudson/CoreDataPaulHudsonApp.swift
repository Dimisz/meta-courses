//
//  CoreDataPaulHudsonApp.swift
//  CoreDataPaulHudson
//
//  Created by VS on 21.02.23.
//

import SwiftUI

@main
struct CoreDataPaulHudsonApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
