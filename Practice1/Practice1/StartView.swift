//
//  StartView.swift
//  Practice1
//
//  Created by gftgrrferty on 2026/06/04.
//

import SwiftUI

struct StartView: View {
    @State var isShowingQuizView = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("どうぶつ\nクイズ！")
                .font(.system(size: 70).bold())
                .foregroundStyle(.originaYellow)
                .stroke(color: .originalGreen, width: 5)
            Spacer()
            // ボタンを押したらisShowingQuizViewをtrueにする
            Button {
                isShowingQuizView = true
            } label: {
                Image(.startButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
            // QuizViewwを表示する
            .fullScreenCover(isPresented: $isShowingQuizView) {
                QuizView()
            } // Button
        }
        .padding()
        .backgroundImage()
    }
}

#Preview {
    StartView()
}
