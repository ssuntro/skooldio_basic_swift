//
//  ContentView.swift
//  test
//
//  Created by Siroratt Suntronsuk on 10/5/2568 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Tap me") {
            let greeter1: Greeter = DefaultGreeter()
            greeter1.greet() // Hello from protocol extension!

            let greeter2: Greeter = CustomGreeter()
            greeter2.greet() // Hi from CustomGreeter!
        }
    }
}

#Preview {
    ContentView()
}
