//
//  WhatsUpApp.swift
//  WhatsUp
//
//  Created by GOURAVM on 27/12/22.
//

import SwiftUI

@main
struct WhatsUpApp: App {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                Home() 
            }
            else{
                TermsAndServiceView()
            }
        }
    }
}
