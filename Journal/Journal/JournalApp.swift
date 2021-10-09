//
//  JournalApp.swift
//  Journal
//
//  Created by Subhankar  Acharya on 09/10/21.
//

import SwiftUI

@main
struct JournalApp: App {
    var body: some Scene {
        // initialize Amplify
        let _ = Backend.initialize()
        WindowGroup {
            ContentView()
        }
    }
}
