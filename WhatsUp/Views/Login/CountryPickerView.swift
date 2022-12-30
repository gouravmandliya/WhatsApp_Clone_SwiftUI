//
//  CountryPickerView.swift
//  WhatsUp
//
//  Created by GOURAVM on 29/12/22.
//

import SwiftUI

struct CountryPickerView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var searchCountryText = ""
    @State private var showCancelButton: Bool = false
    @Binding var selectedCountry :Country
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Countries.countries.filter { $0.name.hasPrefix(searchCountryText) || searchCountryText == "" } ) { country in
                    
                    Button(action: {
                        selectedCountry = country
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        SearchRows(
                            countryName: country.name,
                            countryCode: country.phoneExtension)
                    })
                    
                }
            }
            .searchable(text: $searchCountryText)
            .listStyle(.grouped)
            .navigationTitle("Choose Country")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:doneButton())
        }
    }
    
    var searchResults: [Country] {
        if searchCountryText.isEmpty {
            return Countries.countries
        } else {
            return Countries.countries.filter { $0.name.contains(searchCountryText) }
        }
    }
    
    fileprivate func doneButton() -> Button<Text> {
        return Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("Done")
        })
    }
}

struct CountryPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CountryPickerView(selectedCountry: .constant(Country(countryCode: "US", phoneExtension: "1")))
    }
}
struct SearchRows: View {
    
    @State var countryName: String
    @State var countryCode: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(countryName)
                    Text(" +\(countryCode)")
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }
        .foregroundColor(.black)
    }
}
