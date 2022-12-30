//
//  TermsAndServiceView.swift
//  WhatsUp
//
//  Created by GOURAVM on 29/12/22.
//

import SwiftUI

struct TermsAndServiceView: View {
    @State private var isLoginView = false
    var body: some View {
        NavigationStack  {
            ScrollView {
                Image("official-whatsapp-background-image")
                    .frame(width:UIScreen.main.bounds.width/1.5,height: UIScreen.main.bounds.width/1.5)
                    .cornerRadius((UIScreen.main.bounds.width/1.5)/2)
                   
                    .padding([.top,.bottom],40)
                
                Text("Welcome to WhatsApp")
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                
                VStack {
                    Text("Read our ") +
                    Text("Privacy Policy")
                        .foregroundColor(.blue)
                    +
                    Text(". Tap \"Agree & Continue\" to accept the ") +
                    Text("Terms of Service")
                        .foregroundColor(.blue)
                }
                .foregroundColor(Color(.darkGray))
                .font(.init(.system(size: 20)))
                .multilineTextAlignment(.center)
                .padding(20)
               
                Button {
                    isLoginView = true
                } label: {
                    Text("Agree & Continue")
                        .foregroundColor(.blue)
                        .font(.init(.system(size: 25)))
                        .fontWeight(.bold)
                }
                .navigationDestination(isPresented: $isLoginView) {
                    LoginView()
                }
            }
        }
        .navigationTitle("Terms of Service and Privacy Policy")
    }
}

struct TermsAndServiceView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndServiceView()
    }
}
