//
//  LayoutsApp.swift
//  Layouts
//
//  Created by Hariharan GJ on 15/04/26.
//

import SwiftUI

@main
struct LayoutsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Layout()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
