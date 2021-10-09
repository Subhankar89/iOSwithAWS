//
//  UserData.swift
//  Journal
//
//  Created by Subhankar  Acharya on 09/10/21.
//

import Foundation

// singleton object to store user data
class UserData : ObservableObject {
    private init() {}
    static let shared = UserData()

    @Published var notes : [Note] = []
    @Published var isSignedIn : Bool = false
}
