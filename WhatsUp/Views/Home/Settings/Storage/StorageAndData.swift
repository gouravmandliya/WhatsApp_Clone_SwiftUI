//
//  StorageAndData.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct StorageAndData: View {
    @State private var isLessDataForCalls: Bool = false
    var body: some View {
        List {
            Section("STORAGE") {
                NavigationLink {
                    Text("Manage Storage")
                } label: {
                    Text("Manage Storage")
                }
            }
            Section("NETWORK") {
                NavigationLink {
                    Text("Network Usage")
                } label: {
                    Text("Network Usage")
                }
              
                Toggle("Use Less Data for Calls", isOn: $isLessDataForCalls)
            }
           
            Section {
                NavigationLink {
                    Text("Photos")
                } label: {
                    Text("Photos")
                }
                NavigationLink {
                    Text("Audio")
                } label: {
                    Text("Audio")
                }
                NavigationLink {
                    Text("Video")
                } label: {
                    Text("Video")
                }
                NavigationLink {
                    Text("Documents")
                } label: {
                    Text("Documents")
                }
                NavigationLink {
                    Text("Reset Auto-Download Settings")
                } label: {
                    Text("Reset Auto-Download Settings")
                }
                  
            } header: {
                Text("MEDIA AUTO-DOWNLOAD")
            } footer: {
                Text("Voice Message are always automatically downloaded.")
            }

            
            Section {
                NavigationLink {
                    Text("Media Upload Quality")
                } label: {
                    Text("Media Upload Quality")
                }
              
            } footer: {
                Text("Choose the quality of media files to be sent.")
            }
        }
        .navigationTitle("Storage and Data")
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(.grouped)
    }
}

struct StorageAndData_Previews: PreviewProvider {
    static var previews: some View {
        StorageAndData()
    }
}
