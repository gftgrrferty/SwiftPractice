//
//  ContentView.swift
//  Practice2
//
//  Created by gftgrrferty on 2026/06/06.
//

import SwiftUI

struct ContentView: View {
    @State var cryText = "世界のお金"
    
    var body: some View {
        VStack {
            Text(cryText)
            HStack {
                Button("￥") {
                    cryText = "円"
                }
                Button("$") {
                    cryText = "ドル"
                }
                Button("€") {
                    cryText = "ユーロ"
                }
                Button("£") {
                    cryText = "ポンド"
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
