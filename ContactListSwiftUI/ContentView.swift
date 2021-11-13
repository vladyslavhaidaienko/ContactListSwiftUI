//
//  ContentView.swift
//  ContactListSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Contacts()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            Numbers()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
