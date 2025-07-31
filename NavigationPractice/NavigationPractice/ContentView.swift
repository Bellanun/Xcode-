//
//  ContentView.swift
//  NavigationPractice
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
              
                Text("This is the root view🌳")
                NavigationLink(destination: SecondView()) {
                    Text("Click Me")
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
