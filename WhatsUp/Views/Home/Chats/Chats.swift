//
//  Chats.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Chats: View {
    @State private var names = ["Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted","Holly", "Josh", "Rhonda", "Ted"]
    @State private var selection = Set<String>()
    @State private var searchText = ""
    @State private var callTypes = 0
    var body: some View {
        NavigationStack {
            HStack {
                Button {
                    
                } label: {
                    Text("Broadcaset Lists")
                }
                
                Spacer()
                Button {
                    
                } label: {
                    Text("New Group")
                }
            }
            .padding([.leading,.trailing])
            .foregroundColor(.blue)
            List(searchResults, id: \.self, selection: $selection) { name in
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width:50,height: 50)
                        VStack(alignment:.leading) {
                            Text(name)
                                .font(.title3)
                            HStack {
                                Image("icons8-double-tick-30")
                                    .resizable()
                                    .frame(width:20,height: 20)
                                Text("There is lot to talk")
                            }
                            .font(.caption)
                            .foregroundColor(.gray)
                        }
                        Spacer()
                        VStack {
                            Text("4:15 PM")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Chats")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItemGroup(placement:.navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "camera")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.pencil")
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

struct Chats_Previews: PreviewProvider {
    static var previews: some View {
        Chats()
    }
}
