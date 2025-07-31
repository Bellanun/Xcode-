//
//  ContentView.swift
//  TabPractice2
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           Home()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Home)")
                }
            
            ViewA()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("ViewA")
                }
            
            ViewC()
                 .tabItem() {
                     Image(systemName: "person.fill")
                     Text("ViewB")
                 }
          
        }
    }
}

#Preview {
    ContentView()
}
