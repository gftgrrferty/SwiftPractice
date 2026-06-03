//
//  ContentView.swift
//  Part5_Objects
//
//  Created by gftgrrferty on 2026/06/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("ここに文字を書く")
            Button("ボタン") {
            }
            Button {
                // ボタンを押した時の処理を書く
            } label: {
                Text("ボタン")
            }
            .toolbar {
                Button {
                    //
                } label: {
                    Text("ボタン")
                    Label("", systemImage: "folder")
                }
                .padding()
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
