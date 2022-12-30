//
//  Status.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Status: View {
    let names = ["Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted"]
    @State private var searchText = ""
    @State private var isShowingPrivacyStatus = false
    @State private var callTypes = 0
    var body: some View {
        
        NavigationStack {
            List {
                
                Section {
                    HStack {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width:50,height: 50)
                            
                            .border(.indigo)
                            .cornerRadius(25)
                           
                        VStack(alignment:.leading) {
                            Text("My Status")
                                .font(.title3)

                            Text("Add to my Status")
                            
                            .font(.footnote)
                            .foregroundColor(.gray)
                        }
                        Spacer()
                        Group {
                            Image(systemName: "camera.circle.fill")
                                .resizable()
                                .frame(width: 30,height: 30)
                            
                            Image(systemName: "pencil.circle.fill")
                                .resizable()
                                .frame(width: 30,height: 30)
                        }
                        
                    }
                }
                Section("RECENT UPDATES") {
                    ForEach(searchResults, id: \.self) { name in
                        HStack {
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width:50,height: 50)
                                
                                .border(.indigo)
                                .cornerRadius(25)
                               
                            VStack(alignment:.leading) {
                                Text(name)
                                    .font(.title3)
                                HStack {
                                    Image(systemName: "phone.fill")
                                    Text("1h ago")
                                }
                                .font(.caption)
                                .foregroundColor(.gray)
                            }
                           

                        }
                       }
                }
                       }
             .listStyle(.grouped)
    
                      .navigationTitle("Status")
                      .toolbar {
                          
                          ToolbarItem(placement: .navigationBarLeading) {
                              Button("Privacy") {
                                  isShowingPrivacyStatus = true
                              }
                              .navigationDestination(isPresented: $isShowingPrivacyStatus) {
                                  StatusPrivacy()
                              }
                          }
                }
        }
        .searchable(text: $searchText)
        
    }
    var searchResults: [String] {
          if searchText.isEmpty {
              return names
          } else {
              return names.filter { $0.contains(searchText) }
          }
    }
}

struct Status_Previews: PreviewProvider {
    static var previews: some View {
        Status()
    }
}
