//
//  Help.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Help: View {
    @State private var showTabBar = false

    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment:.leading) {
            ScrollView {
                Image("official-whatsapp-background-image")
                    .frame(width:UIScreen.main.bounds.width/1.5,height: UIScreen.main.bounds.width/1.5)
                    .cornerRadius((UIScreen.main.bounds.width/1.5)/2)
                   
                    .padding([.top,.bottom],50)
                VStack(alignment:.leading,spacing: 12) {
                    Divider()
                    Text("Help Center")
                    Divider()
                    Text("Contact Us")
                    Divider()
                    Text("Terms and Privacy Policy")
                    Divider()
                    Text("About UPI payments and legal name")
                    Divider()
                    Text("Licenses")
                }
                .foregroundColor(.blue)
                .padding()
            }
            Divider()
            Text("@ 2022 WhatsApp LLC")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(10)
               
        }
       
        .toolbar(showTabBar ? .hidden : .visible, for: .tabBar)
        
        .navigationTitle("WhatsApp")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            withAnimation {
                showTabBar = false
            }
            
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left")
        })
        .onAppear() {
            withAnimation {
                showTabBar = true
            }
        }
    }
}

struct Help_Previews: PreviewProvider {
    static var previews: some View {
        Help()
    }
}
