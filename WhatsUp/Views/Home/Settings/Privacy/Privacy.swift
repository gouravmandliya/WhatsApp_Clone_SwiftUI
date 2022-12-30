//
//  Privacy.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Privacy: View {
    @State private var isReadReciept: Bool = false
    var body: some View {
        List {
            Section {
                NavigationLink {
                    Text("Last Seen & Online")
                } label: {
                    Text("Last Seen & Online")
                }
                NavigationLink {
                    Text("Profile Photo")
                } label: {
                    Text("Profile Photo")
                }
                NavigationLink {
                    Text("About")
                } label: {
                    Text("About")
                }
                NavigationLink {
                    Text("Group")
                } label: {
                    Text("Group")
                }
                NavigationLink {
                    Text("Status")
                } label: {
                    Text("Status")
                }
            }
            
            Section {
                NavigationLink {
                    Text("Live Location")
                } label: {
                    Text("Live Location")
                }
                
            } footer: {
                 Text("List of chats where you are sharing your live location.")
            }
            
            Section {
                NavigationLink {
                    Text("Blocked")
                } label: {
                    Text("Blocked")
                }
            } footer: {
                 Text("List of contacts you have blocked.")
            }
            
            Section {
                NavigationLink {
                    Text("Default Message Timer")
                } label: {
                    Text("Default Message Timer")
                }
               
            } header: {
                Text("DISAPPEARING MESSAGES")
            } footer: {
                Text("Start new chats with disappearing set to your timer.")
            }
            
            Section {
                Toggle("Read Receipts", isOn: $isReadReciept)
            } footer: {
                Text("if you turn off read receipts, you won't be able to see read receipts from other people. Read receipts are always sent for group chats.")
            }
            
            Section {
                NavigationLink {
                    Text("Screen Lock")
                } label: {
                    Text("Screen Lock")
                }
 
            } footer: {
                Text("Require Face ID to unlock WhatsApp.")
            }
           

        }.listStyle(.grouped)
            .navigationTitle("Privacy")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct Privacy_Previews: PreviewProvider {
    static var previews: some View {
        Privacy()
    }
}
