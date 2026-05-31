//
//  ContentView.swift
//  Part9
//
//  Created by gftgrrferty on 2026/05/31.
//

import SwiftUI

struct ContentView: View {
    @State var isshowAlert = false
    @State var isshowDialog = false
    
    var body: some View {
        VStack {
            Button("アラート") {
                isshowAlert = true
            }
            .padding()
            
            Button("ダイアログ") {
                isshowDialog = true
            }
            .padding()
        }
        .padding()
        .alert("本当に削除しますか?", isPresented: $isshowAlert) {
            Button("削除する", role: .destructive) {
                
            }
            Button("キャンセル", role: .cancel) {
                
            }
        } message: {
            Text("一度削除したら下に戻すことはできません")
        }
        .confirmationDialog("タイトル", isPresented: $isshowDialog, titleVisibility: .visible) {
            Button("選択肢1") {
                
            }
            Button("選択肢2") {
                
            }
            Button("選択肢3") {
                
            }
            Button("選択肢4") {
                
            }
            Button("キャンセル", role: .cancel) {
                
            }
        } message: {
            Text("ここにメッセージ")
        }
    }
}

#Preview {
    ContentView()
}
