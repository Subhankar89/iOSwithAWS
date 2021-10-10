//
//  ContentView.swift
//  Journal
//
//  Created by Subhankar  Acharya on 09/10/21.
//

import SwiftUI

// this is the main view of our app,
// it is made of a Table with one line per Note
struct ContentView: View {
    @ObservedObject private var userData: UserData = .shared
    
    var body: some View {
        /// Depending on UserData.isSignedIn's value, the UI shows either a SigninButton or the main List view.
        ZStack {
            if (userData.isSignedIn) {
                NavigationView {
                    List {
                        ForEach(userData.notes) { note in
                            ListRow(note: note)
                        }
                    }
                    .navigationBarTitle(Text("Notes"))
                    .navigationBarItems(leading: SignOutButton())
                }
            } else {
                SignInButton()
            }
        }
    }
}

// this is use to preview the UI in Xcode
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let _ = prepareTestData()
        return ContentView()
    }
}
