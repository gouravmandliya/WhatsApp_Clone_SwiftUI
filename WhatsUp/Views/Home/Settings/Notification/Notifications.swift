//
//  Notifications.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Notifications: View {
    @State private var isShowNotification: Bool = false
    var body: some View {
        List {
            Section("MESSAGE NOTIFICATIONS") {
                Toggle("Show Notification", isOn: $isShowNotification)
             
                NavigationLink {
                    Text("Sound")
                } label: {
                    Text("Sound")
                }
                Toggle("Reaction Notification", isOn: $isShowNotification)
            }
            Section("GROUP NOTIFICATIONS") {
                Toggle("Show Notification", isOn: $isShowNotification)
              
                NavigationLink {
                    Text("Sound")
                } label: {
                    Text("Sound")
                }
                Toggle("Reaction Notification", isOn: $isShowNotification)
            }
            
            Section {
                
                  NavigationLink {
                      Text("In-App Notification")
                  } label: {
                      VStack(alignment:.leading){
                          Text("In-App Notification")
                          Text("Banner, Sound, Vibrate")
                              .font(.footnote)
                      }
                      .padding([.top,.bottom],5)
                  }
               
            }
            Section {
                Toggle("Show Priview", isOn: $isShowNotification)
            } footer: {
                Text("Preview message text inside new message notifications.")
            }
            
            Section {
                NavigationLink {
                    Text("Reset Notification Settings")
                        .foregroundColor(.red)
                } label: {
                    Text("Reset Notification Settings")
                        .foregroundColor(.red)
                }
    
            } footer: {
                Text("Reset all notification settings, including custom notification settings for your chats.")
            }
        }
        .navigationTitle("Notifications")
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(.grouped)
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
