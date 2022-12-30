//
//  Communities.swift
//  WhatsUp
//
//  Created by GOURAVM on 28/12/22.
//

import SwiftUI

struct Communities: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Image("icons8-user-groups-100")
                    .padding(20)
                VStack(alignment:.leading,spacing: 20) {
                    Text("Introducing Communities")
                        .font(.title2)
                    Text("Easily organise your related groups and send announcements. Now, your communities, like neighbourhoods or schools, can have their own space.")
                        .foregroundColor(.gray)
                        
                    Divider()
                    Button {
                        
                    } label: {
                        Text("Start a Community")
                            .font(.title3)
                    }
                    Divider()

                }
                .padding(10)
                   
            }
            .padding(10)
            .navigationTitle("Communities")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Communities_Previews: PreviewProvider {
    static var previews: some View {
        Communities()
    }
}
