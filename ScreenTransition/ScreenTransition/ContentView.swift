//
//  ContentView.swift
//  ScreenTransition
//
//  Created by gftgrrferty on 2026/05/30.
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView = false
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    SecondView()
                } label: {
                    Text("SecondViewへナビ遷移")
                }
                
                Button("SecondViewへモーダル遷移") {
                    isShowSecondView = true
                }
                .padding()
//               .fullScreenCoverにすると全画面を遷移画面にできる
                .sheet(isPresented: $isShowSecondView) {
                    SecondView()
//                    　　　遷移の大きさを変更できる
//                        .presentationDetents([.])
                }
            }
            .padding()
            .navigationTitle("画面1")
        }
    }
}

#Preview {
    ContentView()
}
