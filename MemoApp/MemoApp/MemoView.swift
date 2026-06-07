//
//  MemoView.swift
//  MemoApp
//
//  Created by gftgrrferty on 2026/06/07.
//

import SwiftUI

struct MemoView: View {
    @Binding var memo: Memo

    var body: some View {
        VStack {
            TextField("タイトル", text: $memo.title)
                .font(.title)
            TextEditor(text: $memo.body)
                .padding(.top, 8)
            Spacer()
        }
        .padding()
        .navigationTitle("メモ編集")
    }
}

