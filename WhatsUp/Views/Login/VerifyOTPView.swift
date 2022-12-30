//
//  VerifyOTPView.swift
//  WhatsUp
//
//  Created by GOURAVM on 30/12/22.
//

import SwiftUI

struct VerifyOTPView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @State private var otpText:String = ""
    @State var txPhoneNumber = ""
    var body: some View {
        ScrollView {
            VStack(spacing:20) {
                Text("We Have sent you and SMS with a code to the number above.")
             
                Text("To complete your phone number verification, please enter the 6-digit activation code.")
                Spacer(minLength: 20)
                OTPView(otpCode:$otpText, otpCodeLength: 6, textColor: .black, textSize: 27)
                    
                    .onChange(of: otpText, perform: { newValue in
                        if newValue.count == 6 {
                            isLoggedIn = true
                        }
                    })
                .padding(.horizontal,60)
                Divider()
                Text("Call Me in 04:52")
                    .foregroundColor(.gray)
                Divider()
            }
        }
        .font(.title2)
        .multilineTextAlignment(.center)
        .navigationTitle(txPhoneNumber)
        
    }
}

struct VerifyOTPView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyOTPView()
    }
}
