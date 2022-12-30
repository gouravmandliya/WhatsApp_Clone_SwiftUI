//
//  Home.swift
//  WhatsUp
//
//  Created by GOURAVM on 27/12/22.
//

import SwiftUI

fileprivate struct TabbarItem {
    var imageName: String
    var title: String
}

struct Home: View {
    
    fileprivate var items: [TabbarItem] = {
        [TabbarItem(imageName: "circle.dashed", title: "Status"),
        TabbarItem(imageName: "phone", title: "Calls"),
        TabbarItem(imageName: "person.3.fill", title: "Communities"),
        TabbarItem(imageName: "message", title: "Chats"),
        TabbarItem(imageName: "gear", title: "Settings")]
    }()
    
    var body: some View {
        TabView{
            Status()
                .tabItem {
                    Image(systemName:"circle.dashed")
                    Text("Status")
                }
            Calls()
                .tabItem {
                    Image(systemName:"phone")
                    Text("Calls")
                }
            Communities()
                .tabItem {
                    Image(systemName:"person.3.fill")
                    Text("Communities")
                }
            
            Chats()
                .tabItem {
                    Image(systemName:"message")
                    Text("Chats")
                }
              
            Settings()
                .tabItem {
                    Image(systemName:"gear")
                    Text("Settings")
                }
               
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
