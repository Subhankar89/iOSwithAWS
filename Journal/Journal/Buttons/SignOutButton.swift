//
//  SignOutButton.swift
//  Journal
//
//  Created by Subhankar  Acharya on 10/10/21.
//

import SwiftUI

struct SignOutButton : View {
    var body: some View {
        Button(action: { Backend.shared.signOut() }) {
                Text("Sign Out")
        }
    }
}
