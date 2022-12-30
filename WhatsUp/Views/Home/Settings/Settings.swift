//
//  Settings.swift
//  WhatsUp
//
//  Created by GOURAVM on 27/12/22.
//

import SwiftUI

struct Settings: View {
  

    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        NavigationLink {
                            EditProfile()
                        } label: {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width: 50,height: 50)
                            
                            
                            VStack(alignment:.leading) {
                                Text("Raman")
                                    .font(.title2)
                                    
                                Text("Do not fail to try")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                Section {
                    NavigationLink {
                        Text("Starred Messages")
                    } label: {
                        Item(imageName: "star", title: "Starred Messages")
                    }
                    NavigationLink {
                        Text("WhatsApp Web/Desktop")
                    } label: {
                        Item(imageName: "laptopcomputer", title: "WhatsApp Web/Desktop")
                    }
                }
                Section {
                    NavigationLink {
                        Account()
                    } label: {
                        Item(imageName: "key.fill", title: "Account")
                    }
                    NavigationLink {
                        Privacy()
                    } label: {
                        Item(imageName: "lock.square.fill", title: "Privacy")
                    }
                    NavigationLink {
                        ChatsSettings()
                    } label: {
                        Item(imageName: "message.fill", title: "Chat")
                    }
                    NavigationLink {
                        Notifications()
                    } label: {
                        Item(imageName: "bell.badge.fill", title: "Notifications")
                    }
                    NavigationLink {
                        StorageAndData()
                    } label: {
                        Item(imageName: "arrow.up.arrow.down.square.fill", title: "Data and Storage Usage")
                    }
                }
                Section {
                    NavigationLink {
                        Help()
                         
                    } label: {
                        Item(imageName: "questionmark.circle.fill", title: "Help")
                    }
                    NavigationLink {
                        Text("Tell a Friend")
                    } label: {
                        Item(imageName: "heart.square.fill", title: "Tell a Friend")
                    }
                }
            }
            .listStyle(.grouped)
            .toolbar(.visible, for: .tabBar)
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            
            }
       
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}


fileprivate struct Item: View {
    var imageName:String
    var title:String
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(title)
        }
    }
}
