//
//  ContentView.swift
//  Practice5
//
//  Created by gftgrrferty on 2026/06/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.frame(width: 200, height: 200)
            Color.red.frame(width: 150, height: 150)
            Color.yellow.frame(width: 100, height: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
