//
//  Calls.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Calls: View {
    @State private var names = ["Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted"]
    @State private var searchText = ""
    @State private var callTypes = 0
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.self) { name in
                    HStack {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width:50,height: 50)
                        VStack(alignment:.leading) {
                            Text(name)
                                .font(.title3)
                            HStack {
                                Image(systemName: "phone.fill")
                                Text("outgoing")
                            }
                            .font(.caption)
                            .foregroundColor(.gray)
                        }
                        Spacer()
                        Text("Yesterday")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Button(action: {
                            
                        }
                        ) {
                            Image(systemName: "info.circle")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width:20,height: 20)
                        }
                        
                    }
                }
                .onDelete(perform: delete)
            }
            
            
            .listStyle(.grouped)
            .navigationTitle("Calls")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement:.principal){
                    Picker("What is your favorite color?", selection: $callTypes) {
                        Text("All").tag(0)
                        Text("Missed").tag(1)
                        
                    }
                    .frame(width:200)
                    .pickerStyle(.segmented)
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "phone.fill.badge.plus")
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
    
     func delete(at offsets: IndexSet) {
        names.remove(atOffsets: offsets)
    }
}



struct Calls_Previews: PreviewProvider {
    static var previews: some View {
        Calls()
    }
}
