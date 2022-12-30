//
//  StatusPrivacy.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct StatusPrivacyItem:Identifiable {
    var id:UUID = UUID()
    var name:String
    var info:String
}

struct StatusPrivacy: View {
    var body: some View {
        List {
            Section {
                
                ForEach(items) { item in
                    NavigationLink {
                        Text("Status Privacy")
                    } label: {
                        if item.name == "My Contacts" {
                            Image("icons8-done-50")
                                    .resizable()
                                    .foregroundColor(.blue)
                                    
                                    .frame(width:20,height: 20)
                                    
                        }
                        VStack(alignment:.leading) {
                       
                            Text(item.name)
                            Text(item.info)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        .padding([.top,.bottom],1)
                    }
                }
            } header: {
                Text("WHO WILL SEE MY UPDATES")
            } footer: {
                Text("Changes to your privacy settings won't affect status updates that you've sent already.")
            }
           
           
        } .listStyle(.grouped)
            .navigationTitle("Status Privacy")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    var items: [StatusPrivacyItem] = {
        [StatusPrivacyItem(name: "My Contacts", info: "Share with all of your contacts."),
        StatusPrivacyItem(name: "My Contacts Except...", info: "Share with your contacts except people you select"),
        StatusPrivacyItem(name: "Only Share With...", info: "Only share with selected contacts")]
    }()
}

struct StatusPrivacy_Previews: PreviewProvider {
    static var previews: some View {
        StatusPrivacy()
    }
}
