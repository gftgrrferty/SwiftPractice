//
//  ContentView.swift
//  TaxCalculator
//
//  Created by gftgrrferty on 2026/05/30.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNumber = 1
    @State private var timer : Timer?
    @State private var isrolling = false
    
    var body: some View {
        //見た目(View)
        VStack {
            Spacer()
            Image(systemName: "die.face.\(randomNumber)")
                .resizable() //画像の大きさを変えるならresizableをつける
                .scaledToFit() //比率固定
                .frame(width: UIScreen.main.bounds.width/2) // 数値を入れるんじゃなくていい感じに大きさを決める
                .padding()
            Spacer()
            Button {
               playDice()
            }   label: {
                Text("サイコロを振る")
                    .padding()
                    .background(.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .disabled(isrolling)
            Spacer()
        }
    }
    //処理
   private func playDice() {
        print("ボタンが押されたよ")
        isrolling = true
        // ここで0.1秒ごとに呼ばれる中にランダムの1~6を入れてるから0.1秒ごとに変わる
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            randomNumber = Int .random(in: 1...6)
        }
        // ここで0.5秒後にタイマーを止めている
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 ) {
            timer?.invalidate()
            timer = nil
            isrolling = false
        }
    }
}
#Preview {
    ContentView()
}
