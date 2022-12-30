//
//  EditProfile.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct EditProfile: View {
    var body: some View {
        List{
            VStack(alignment:.leading) {
                HStack(alignment:.center,spacing: 20) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width:60,height: 60)
                    Text("Enter your name and add an optional profile picture.")
                        .font(.footnote)
                        .foregroundColor(.gray)

                }
                Button("Edit") {
                    
                }
                .padding([.leading])
            }
           
            Text("Profile Name")
            Section("PHONE NUMBER") {
                Text("+91 524792146")
            }
            Section("ABOUT") {
                Text("Random Quote")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
        .listStyle(.grouped)
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}
