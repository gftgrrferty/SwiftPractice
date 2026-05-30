//
//  ContentView.swift
//  TaxCalculator
//
//  Created by gftgrrferty on 2026/05/30.
//

import SwiftUI

struct ContentView: View {
    @State var randomNumber = 1
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "die.face.\(randomNumber)")
                .resizable() //画像の大きさを変えるならresizableをつける
                .scaledToFit() //比率固定
                .frame(width: UIScreen.main.bounds.width/2) // 数値を入れるんじゃなくていい感じに大きさを決める
                .padding()
            Spacer()
            Button {
                print("ボタンが押されたよ")
                randomNumber = Int .random(in: 1...6) //ランダムの数字を作る
            }   label: {
                Text("サイコロを振る")
                    .padding()
                    .background(.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}
#Preview {
    ContentView()
}
