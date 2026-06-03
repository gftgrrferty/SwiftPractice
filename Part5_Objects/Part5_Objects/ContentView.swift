//
//  ContentView.swift
//  Part5_Objects
//
//  Created by gftgrrferty on 2026/06/03.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = true
    @State var text = ""
    var body: some View {
        VStack {
            Text("ここはテキストだよ")
                .font(.system(.title, design: .serif))
                .background(.green)
            Button {
                // ボタンを押した時の処理書く
            } label: {
                Label("リンク", systemImage: "link")
                    .foregroundStyle(.red)
            }

            Button {
                // ボタンを押した時の処理書く
            } label: {
                Label("犬ドック", systemImage: "dog")
                    .foregroundStyle(.purple)
            }
            Button {
                // ボタンを押した時の処理を書く
            } label: {
                Label("ボタン", systemImage: "folder")
                    .foregroundStyle(.yellow)
            }
            
            Image(systemName: "star")
            
            Image(.うおｗ)
                .padding(.leading)
            
            Toggle("", isOn: $isOn)
            
            TextField("", text: $text)
                .textFieldStyle(.roundedBorder)
            
            List {
                Text("りんご")
                Text("いちご")
                Text("スイカ")
                Text("バナナ")
            }
            
        } // VStack
        .foregroundStyle(.primary)
        .padding()
    }
}
#Preview {
    ContentView()
}
