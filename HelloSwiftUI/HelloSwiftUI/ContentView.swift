//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by gftgrrferty on 2026/05/29.
//

import SwiftUI

struct ContentView: View {
    @State var str = "Hello, SwiftUI"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(str)
                .foregroundColor(Color.red)
            Button("ボタン") {
                str = "こんにちは世界"
                print("ボタンが押されたよ")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
