//
//  EditProfile.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct EditProfile: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @State private var profileName:String = ""
    @State private var status:String = ""
    @State var txPhoneNumber:String = ""
   
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
           
            TextField("Profile Name", text: $profileName)
            Section("PHONE NUMBER") {
                Text(txPhoneNumber)
            }
            Section("ABOUT") {
                TextField("", text: $status)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
        .listStyle(.grouped)
        .navigationBarItems(trailing:
                                
        Button("Done", action: {
            isLoggedIn = true
        })
                            
        )
        
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}
