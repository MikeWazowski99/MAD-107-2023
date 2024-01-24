//
//  StellarApp.swift
//  Stellar
//
//  Created by Michael Tapia on 10/22/23.
//

import SwiftUI

@main
struct StellarApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
