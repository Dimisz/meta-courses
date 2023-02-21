//
//  ContentView.swift
//  CoreDataPaulHudson
//
//  Created by VS on 21.02.23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = " "
    
    var body: some View {
        VStack {
            TextField("Search", text: $lastNameFilter)
            FilteredList(filter: lastNameFilter)
            Button("Add Example"){
                let taylor = Singer(context: moc)
                taylor.firstName = "Taylor"
                taylor.lastName = "Swift"
                
                let ed = Singer(context: moc)
                ed.firstName = "Ed"
                ed.lastName = "Sheeran"
                
                let adele = Singer(context: moc)
                adele.firstName = "Adele"
                adele.lastName = "Adkins"
                
                try? moc.save()
            }
            
//            Button("Show A"){
//                lastNameFilter = "A"
//            }
//            Button("Show S") {
//                lastNameFilter = "S"
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
