//
//  ContentView.swift
//  ToDo
//
//  Created by gftgrrferty on 2026/06/01.
//

import SwiftUI

struct ContentView: View {
    //    @State var taskData = [(title: "ジョギングする", completed: false),(title: "お花に水をやる", completed: false),(title: "部屋の掃除をやる", completed: false),(title: "本を読む", completed: false),(title: "トイレ掃除", completed: false)]
    @State var taskData: [TodoData] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($taskData, id: \.id) { $task in
                    HStack {
                        Button {
                            task.completed.toggle()
                        } label: {
                            Label(
                                task.completed ? "完了済み" : "未完了",
                                systemImage: task.completed ? "checkmark.circle.fill" : "circle"
                            )
                            .labelStyle(.iconOnly)
                        }
                        // $をつけるとbindingになる
                        TextField("今日のタスク", text: $task.title)
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
        .onChange(of: taskData) {
            saveTask(tasks: taskData)
        }
        // NavigationStackが表示された時に実行される。
        .onAppear {
            taskData = loadTask()
        }
        //        .foregroundStyle(.primary)
    }
    // TextFieldを追加する関数
    func addTaskData() {
        taskData.append(TodoData())
    }
    // TextFieldを削除する関数
    func deleteTask(at offsets: IndexSet) {
        taskData.remove(atOffsets: offsets)
    }
    // taskDataを読み込む
    // funcは関数を宣言,"->"があると返り値がある
    func loadTask() -> [TodoData] {
        // nilかどうかをチェックしている
        if let data = UserDefaults.standard.data(forKey: "taskData"),
           let taskData = try? JSONDecoder().decode([TodoData].self, from: data) {
            return taskData
        }
        
        return []
    }
    // taskDataを保存
    func saveTask(tasks: [TodoData]) {
        // nilかどうかをチェックしている
        if let data = try? JSONEncoder().encode(tasks) {
            UserDefaults.standard.set(data, forKey: "taskData")
        }
    }
}

#Preview {
    ContentView()
}
