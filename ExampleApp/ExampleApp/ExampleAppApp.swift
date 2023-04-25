//
//  ExampleAppApp.swift
//  ExampleApp
//
//  Created by Nguyen Thanh Thuc on 25/04/2023.
//

import SwiftUI

@main
struct ExampleAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
