//
//  Backend.swift
//  Journal
//
//  Created by Subhankar  Acharya on 09/10/21.
//

import UIKit
import Amplify
import AmplifyPlugins

class Backend {
    static let shared = Backend()
    static func initialize() -> Backend {
        return .shared
    }
    
    private init() {
        //initialize amplify
        do  {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify Initialized")
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }
}
