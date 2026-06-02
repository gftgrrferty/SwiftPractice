//
//  ContentView.swift
//  Part3
//
//  Created by gftgrrferty on 2026/06/02.
//

import SwiftUI

struct ContentView: View {
    //    ここで変数を宣言する
    @State var nakigoeText = "鳴き声"
    var body: some View {
        VStack {
            // テキスト
            Text(nakigoeText)
            HStack {
                Button("🐈") {
                    // cryTextに"ニャン"を書き換える
                    nakigoeText = "ニャン"
                }
                Button("🐕") {
                    nakigoeText = "ワンワン"
                }
                Button("🐸") {
                    nakigoeText = "ケロケロ"
                }
                Button("🐘") {
                    nakigoeText = "パオン"
                }
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    ContentView()
}
