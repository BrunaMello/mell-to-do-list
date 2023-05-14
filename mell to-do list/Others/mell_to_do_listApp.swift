//
//  mell_to_do_listApp.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import FirebaseCore
import SwiftUI

@main
struct mell_to_do_listApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
