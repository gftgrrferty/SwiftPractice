//
//  ContentView.swift
//  ToDo
//
//  Created by gftgrrferty on 2026/06/01.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [(title: "ジョギングする", completed: false),(title: "お花に水をやる", completed: false),(title: "部屋の掃除をやる", completed: false),(title: "本を読む", completed: false),(title: "トイレ掃除", completed: false)]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($taskData.indices, id: \.self) { index in
                    HStack {
                        Button {
                            taskData[index].completed.toggle()
                        } label: {
                            Label(
                                taskData[index].completed ? "完了済み" : "未完了",
                                systemImage: taskData[index].completed ? "checkmark.circle.fill" : "circle"
                            )
                            .labelStyle(.iconOnly)
                        }
                        // $をつけるとbindingになる
                        TextField("今日のタスク", text: $taskData[index].title)
                    }
                }
                .onDelete(perform: deleteTask)
            } //List
            
            .toolbar {
                Button(action: {
                    addTaskData()
                }) {
                    Label("追加", systemImage: "plus")
                }
            }
            .navigationTitle("ToDoリスト")
        }
    }
    // TextFieldを追加する関数
    func addTaskData() {
        taskData.append((title: "", completed: false))
    }
    // TextFieldを削除する関数
    func deleteTask(at offsets: IndexSet) {
        taskData.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
