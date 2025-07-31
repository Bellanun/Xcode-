//
//  NewToDoView.swift
//  To do list app
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task Title")
            TextField("Enter the task description...", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("It Is Important")
                    .padding()
            }
        }
        
    }
}

#Preview {
    NewToDoView()
}
