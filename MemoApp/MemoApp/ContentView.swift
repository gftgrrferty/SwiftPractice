//
//  ContentView.swift
//  MemoApp
//
//  Created by gftgrrferty on 2026/06/05.
//

import SwiftUI

struct ContentView: View {
    @State var memos: [Memo] = []

    var body: some View {
        NavigationStack {
            List {
                ForEach($memos, id: \.id) { $memo in
                    HStack {
                        TextField("タイトル", text: $memo.title)
                        NavigationLink(destination: MemoView(memo: $memo)) {
                            Image(systemName: "chevron.right")
                        }
                    }
                }
                .onDelete(perform: deleteMemo)
            }
            .toolbar {
                Button(action: addMemo) {
                    Label("追加", systemImage: "plus")
                }
            }
            .navigationTitle("メモ")
        }
        .onChange(of: memos) { new in saveMemos(new) }
        .onAppear { memos = loadMemos() }
    }

    func addMemo() {
        memos.append(Memo()) // MemoDataではなくMemoを追加
    }

    func deleteMemo(at offsets: IndexSet) {
        memos.remove(atOffsets: offsets)
    }

    func loadMemos() -> [Memo] {
        if let data = UserDefaults.standard.data(forKey: "memos"),
           let arr = try? JSONDecoder().decode([Memo].self, from: data) {
            return arr
        }
        return []
    }

    func saveMemos(_ memos: [Memo]) {
        if let data = try? JSONEncoder().encode(memos) {
            UserDefaults.standard.set(data, forKey: "memos")
        }
    }
}

#Preview {
    ContentView()
}
