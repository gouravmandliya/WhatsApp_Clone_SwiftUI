//
//  ChatsSettings.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct ChatsSettings: View {
    @State private var cameraRoll:Bool = false
    var body: some View {
        List {
            Section {
                NavigationLink {
                    Text("Chat Wallpaper")
                } label: {
                    Text("Chat Wallpaper")
                }
            }
            Section {
                    Toggle("Save to Camera Roll", isOn: $cameraRoll)
                
            } footer: {
                Text("Automatically save photos and videos you receives to your iPhone's Camera Roll.")
            }
            
            Section {
                NavigationLink {
                    Text("Chat Backup")
                } label: {
                    Text("Chat Backup")
                }
                NavigationLink {
                    Text("Export Chat")
                } label: {
                    Text("Export Chat")
                }
            
            }
            
            Section {
                Toggle("Keep Chat Archived", isOn: $cameraRoll)
            } footer: {
                Text("Archived chats will remain archived when you receive a new message.")
            }
            
            Section {
                Group {
                    Text("Move Chat to Android")
                    Text("Archive All Chats")
                }
                .foregroundColor(.blue)
                
                Group {
                    Text("Clear All Chats")
                    Text("Delete All Chats")
                }
                .foregroundColor(.red)
            }

        }
        .listStyle(.grouped)
        .navigationTitle("Chats")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ChatsSettings_Previews: PreviewProvider {
    static var previews: some View {
        ChatsSettings()
    }
}
