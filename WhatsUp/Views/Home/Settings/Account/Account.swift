//
//  Account.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Account: View {
    
    let setting1 = ["Security Notification", "Two-Step Verification", "Change Number"]
    let setting2 = ["Request Account Info","Delete My Account"]
    var body: some View {
     
            List {
                Section {
                    
                    ForEach(setting1,id: \.self) { item in
                        NavigationLink {
                            Text(item)
                        } label: {
                            Text(item)
                        }
                    }
                }
                Section {
                    ForEach(setting2,id: \.self) { item in
                        NavigationLink {
                            Text(item)
                        } label: {
                            Text(item)
                        }
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.inline)
        }
     
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
