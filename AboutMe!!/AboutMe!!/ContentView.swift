//
//  ContentView.swift
//  AboutMe!!
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
//            Rectangle()
//            frame(width: 150, height: 100)
            VStack(alignment: .center) {
                Text("About Me!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Image("tinkus")
                Spacer()
                
            }
            
                
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
