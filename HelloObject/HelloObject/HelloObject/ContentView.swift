//
//  ContentView.swift
//  HelloObject
//
//  Created by gftgrrferty on 2026/05/30.
//

import SwiftUI

struct ContentView: View {
        //MARK: - スイッチを作成した
    @State var isOn = true
//    MARK: - テキストフィールドを作成した
//    @State var inputText = ""
    
    var body: some View {
        VStack {
            //MARK: -スイッチを作成した
            Toggle("スイッチ", isOn: $isOn)
//            MARK: - テキストフィールドを作成した
//             TextField("ここに文字を入力してください", text: $inputText)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
