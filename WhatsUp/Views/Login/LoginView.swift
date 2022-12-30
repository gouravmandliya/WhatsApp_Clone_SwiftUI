//
//  LoginView.swift
//  WhatsUp
//
//  Created by GOURAVM on 29/12/22.
//

import SwiftUI

struct LoginView: View {
    @State var presentCountryChoice = false
    @State var txPhoneNumber = ""
    @State var isShowVerifyOTPView: Bool = false
    @State var country:Country = Country(countryCode: "US", phoneExtension: "1")
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Please confirm your country code and enter your phone number ")
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.vertical, 19)
                .padding(.horizontal, 42)
            
            Divider().offset(y: -10)
            
            VStack(alignment: .leading) {
                
                Button(action: {
                    self.presentCountryChoice.toggle()
                }, label: {
                    HStack {
                        Text(country.name)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .padding(.trailing, 16)
                    }
                })
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray.opacity(0.35))
                    .padding(.top, 0)
                
                HStack {
                    Text("+ \(country.phoneExtension)")
                        .font(Font.system(size: 27, weight: .light, design: .default)).padding(.trailing, 29)
                    
                    Rectangle()
                        .frame(width: 1.0, height: 46, alignment: .trailing)
                        .foregroundColor(Color.gray.opacity(0.35))
                    
                    TextField(
                        "Phone Number",
                        text: $txPhoneNumber)
                    .padding(.horizontal, 16).keyboardType(.phonePad)
                    .font(Font.system(size: 27, weight: .light, design: .default))
                    
                }.offset(y: -10)
            }
            .padding(.leading, 16)
            .padding(.top, -5)
            
            Divider().offset(y: -28)
            Spacer()
        }
        .sheet(isPresented: $presentCountryChoice) {
            CountryPickerView(selectedCountry: $country)
        }
        .navigationTitle("Phone Number")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                
                    Button("Done", action: {
                        isShowVerifyOTPView = true
                        }).disabled(self.txPhoneNumber.count <= 3)
                        .navigationDestination(isPresented: $isShowVerifyOTPView) {
                            VerifyOTPView(txPhoneNumber: "+  \(country.phoneExtension) \(txPhoneNumber)")
                        }
                    )
        
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}

