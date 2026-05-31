//
//  ContentView.swift
//  Part8
//
//  Created by gftgrrferty on 2026/05/31.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var isShowContentView2 = false
    
    var body: some View {
        VStack {
            HStack {
                Button("-") {
                    count -= 1
                }
                Text("Counter: \(count)")
                Button("+") {
    //                count = count + 1
                    count += 1
                }
            }
            .padding()
            Button("ContentView2へ") {
                    isShowContentView2 = true
            }
        }
        .font(.title)
        .sheet(isPresented: $isShowContentView2) {
            ContentView2(contentView2Count: $count)
        }
    }
}

struct ContentView2: View {
    @Binding var contentView2Count: Int
    var body: some View {
        Button("+10") {
            contentView2Count += 10
        }
        .font(.title)
//        Button("-10") {
//            count -= 10
//        }
//        .font(.title)
    }
}

#Preview {
    ContentView()
}
