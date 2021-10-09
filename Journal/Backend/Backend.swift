//
//  Backend.swift
//  Journal
//
//  Created by Subhankar  Acharya on 09/10/21.
//

import UIKit
import Amplify

class Backend {
    static let shared = Backend()
    static func initialize() -> Backend {
        return .shared
    }
    
    private init() {
        //initialize amplify
        
        do  {
            try Amplify.configure()
            print("Amplify Initialized")
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }
}
